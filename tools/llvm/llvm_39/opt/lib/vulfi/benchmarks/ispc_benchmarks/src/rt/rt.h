#pragma once

#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#define NOMINMAX
#pragma warning (disable: 4244)
#pragma warning (disable: 4305)
#endif

#include <algorithm>
#include <stdint.h>

// Just enough of a float3 class to do what we need in this file.
#ifdef _MSC_VER
__declspec(align(16)) 
#endif
struct float3 {
    float3() { }
    float3(float xx, float yy, float zz) { x = xx; y = yy; z = zz; }

    float3 operator*(float f) const { return float3(x*f, y*f, z*f); }
    float3 operator-(const float3 &f2) const { 
        return float3(x-f2.x, y-f2.y, z-f2.z); 
    }
    float3 operator*(const float3 &f2) const { 
        return float3(x*f2.x, y*f2.y, z*f2.z); 
    }
    float x, y, z;
    float pad;  // match padding/alignment of ispc version 
}
#ifndef _MSC_VER
__attribute__ ((aligned(16)))
#endif
;

struct Ray {
    float3 origin, dir, invDir;
    unsigned int dirIsNeg[3];
    float mint, maxt;
    int hitId;
};

#if defined(ISPC_SERIAL)
// Declare these in a namespace so the mangling matches
namespace ispc {
    struct Triangle {
        float p[3][4]; // extra float pad after each vertex
        int32_t id;
        int32_t pad[3]; // make 16 x 32-bits
    };

    struct LinearBVHNode {
        float bounds[2][3];
        int32_t offset;     // primitives for leaf, second child for interior
        uint8_t nPrimitives;
        uint8_t splitAxis;
        uint16_t pad;
    };
}
using namespace ispc;
#endif
