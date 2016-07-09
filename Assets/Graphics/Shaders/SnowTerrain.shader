// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:34369,y:33052,varname:node_2865,prsc:2|diff-1158-OUT,spec-5744-OUT,gloss-8556-OUT,normal-9527-OUT,emission-4168-OUT,lwrap-7783-RGB;n:type:ShaderForge.SFN_Multiply,id:6343,x:33419,y:32927,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:33185,y:33024,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:33185,y:32839,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:33026,y:33139,varname:_BumpMap,prsc:2,tex:dc3378451af875e4f8b64512f5e6c28e,ntxv:3,isnm:True|TEX-1163-TEX;n:type:ShaderForge.SFN_Vector1,id:8556,x:33458,y:33102,varname:node_8556,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Vector1,id:5744,x:33555,y:33053,varname:node_5744,prsc:2,v1:0;n:type:ShaderForge.SFN_ViewReflectionVector,id:3727,x:31169,y:33224,varname:node_3727,prsc:2;n:type:ShaderForge.SFN_Dot,id:7854,x:31401,y:33138,varname:node_7854,prsc:2,dt:4|A-9362-OUT,B-3727-OUT;n:type:ShaderForge.SFN_Vector3,id:4802,x:31380,y:32410,varname:node_4802,prsc:2,v1:1,v2:1,v3:0;n:type:ShaderForge.SFN_Multiply,id:6564,x:32479,y:33008,varname:node_6564,prsc:2|A-6995-OUT,B-9741-OUT;n:type:ShaderForge.SFN_Tex2d,id:3512,x:31971,y:32556,ptovrint:False,ptlb:node_3512,ptin:_node_3512,varname:node_3512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d79f56d36229c5c498e2c318a494c193,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7783,x:33557,y:33568,ptovrint:False,ptlb:node_7783,ptin:_node_7783,varname:node_7783,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.259,c2:0.697,c3:1,c4:1;n:type:ShaderForge.SFN_Power,id:9741,x:31813,y:33221,varname:node_9741,prsc:2|VAL-904-OUT,EXP-3405-OUT;n:type:ShaderForge.SFN_Vector1,id:3405,x:31554,y:33231,varname:node_3405,prsc:2,v1:22;n:type:ShaderForge.SFN_Tex2d,id:3112,x:30147,y:32373,ptovrint:False,ptlb:node_2791_copy,ptin:_node_2791_copy,varname:_node_2791_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c15f8f5c7ccec5846b5821b81c42906a,ntxv:2,isnm:False|UVIN-7234-OUT;n:type:ShaderForge.SFN_Normalize,id:5839,x:30645,y:32417,varname:node_5839,prsc:2|IN-3671-OUT;n:type:ShaderForge.SFN_RemapRange,id:3671,x:30401,y:32411,varname:node_3671,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3112-RGB;n:type:ShaderForge.SFN_LightVector,id:8308,x:30681,y:32786,varname:node_8308,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6559,x:30803,y:31986,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7297,x:31202,y:32165,varname:node_7297,prsc:2,dt:4|A-6559-OUT;n:type:ShaderForge.SFN_RemapRange,id:7234,x:29954,y:32373,varname:node_7234,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-415-OUT;n:type:ShaderForge.SFN_Power,id:6995,x:32317,y:32855,varname:node_6995,prsc:2|VAL-8624-OUT,EXP-6633-OUT;n:type:ShaderForge.SFN_Vector1,id:6633,x:32138,y:32889,varname:node_6633,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:8624,x:32138,y:32673,varname:node_8624,prsc:2,frmn:0,frmx:1,tomn:0,tomx:20|IN-3512-RGB;n:type:ShaderForge.SFN_Relay,id:4168,x:33910,y:33153,varname:node_4168,prsc:2|IN-6564-OUT;n:type:ShaderForge.SFN_Multiply,id:4303,x:31917,y:33053,varname:node_4303,prsc:2|A-7297-OUT,B-9741-OUT;n:type:ShaderForge.SFN_RemapRange,id:5970,x:31808,y:32775,varname:node_5970,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5;n:type:ShaderForge.SFN_Lerp,id:9362,x:31105,y:32768,varname:node_9362,prsc:2|A-5839-OUT,B-8308-OUT,T-5266-OUT;n:type:ShaderForge.SFN_Slider,id:5266,x:30525,y:33098,ptovrint:False,ptlb:node_5266,ptin:_node_5266,varname:node_5266,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4802001,max:1;n:type:ShaderForge.SFN_Lerp,id:904,x:31603,y:33057,varname:node_904,prsc:2|A-7854-OUT,B-93-OUT,T-5451-OUT;n:type:ShaderForge.SFN_Lerp,id:7617,x:31105,y:32924,varname:node_7617,prsc:2|A-8254-OUT,B-8308-OUT,T-6414-OUT;n:type:ShaderForge.SFN_Slider,id:6414,x:30538,y:33223,ptovrint:False,ptlb:node_5266_copy,ptin:_node_5266_copy,varname:_node_5266_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5451,x:30738,y:33465,ptovrint:False,ptlb:node_5451,ptin:_node_5451,varname:node_5451,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5688539,max:1;n:type:ShaderForge.SFN_Dot,id:93,x:31414,y:33311,varname:node_93,prsc:2,dt:1|A-7617-OUT,B-3727-OUT;n:type:ShaderForge.SFN_Tex2d,id:1489,x:30136,y:32582,ptovrint:False,ptlb:node_2791_copy_copy,ptin:_node_2791_copy_copy,varname:_node_2791_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c15f8f5c7ccec5846b5821b81c42906a,ntxv:2,isnm:False|UVIN-6329-OUT;n:type:ShaderForge.SFN_Normalize,id:8254,x:30634,y:32626,varname:node_8254,prsc:2|IN-2059-OUT;n:type:ShaderForge.SFN_RemapRange,id:2059,x:30390,y:32620,varname:node_2059,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1489-RGB;n:type:ShaderForge.SFN_RemapRange,id:9378,x:29686,y:32554,varname:node_9378,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.8|IN-415-OUT;n:type:ShaderForge.SFN_RemapRange,id:7585,x:32674,y:33165,varname:node_7585,prsc:2,frmn:0,frmx:1,tomn:0,tomx:888|IN-6564-OUT;n:type:ShaderForge.SFN_Add,id:6329,x:29908,y:32635,varname:node_6329,prsc:2|A-9378-OUT,B-1220-OUT;n:type:ShaderForge.SFN_Vector2,id:1220,x:29686,y:32746,varname:node_1220,prsc:2,v1:3,v2:4;n:type:ShaderForge.SFN_Slider,id:3726,x:32973,y:33593,ptovrint:False,ptlb:nnnnnnn,ptin:_nnnnnnn,varname:node_3726,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4600001,max:1;n:type:ShaderForge.SFN_Lerp,id:9527,x:33520,y:33303,varname:node_9527,prsc:2|A-1364-OUT,B-3651-OUT,T-3726-OUT;n:type:ShaderForge.SFN_Vector3,id:3651,x:33216,y:33356,varname:node_3651,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_NormalVector,id:3126,x:33052,y:33423,prsc:2,pt:False;n:type:ShaderForge.SFN_Add,id:65,x:32615,y:33366,varname:node_65,prsc:2|A-415-OUT,B-8109-OUT;n:type:ShaderForge.SFN_TexCoord,id:8924,x:28905,y:32532,varname:node_8924,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector2,id:8109,x:32375,y:33424,varname:node_8109,prsc:2,v1:1.5,v2:1.2;n:type:ShaderForge.SFN_RemapRange,id:5132,x:32792,y:33348,varname:node_5132,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-65-OUT;n:type:ShaderForge.SFN_Lerp,id:1364,x:33216,y:33226,varname:node_1364,prsc:2|A-5964-RGB,B-783-RGB,T-8262-RGB;n:type:ShaderForge.SFN_Tex2d,id:8262,x:32794,y:33663,ptovrint:False,ptlb:node_8262,ptin:_node_8262,varname:node_8262,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b1faf80bcb93e1c469112231843afcf3,ntxv:0,isnm:False|UVIN-5650-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1163,x:32742,y:32928,ptovrint:False,ptlb:Normals,ptin:_Normals,varname:node_1163,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dc3378451af875e4f8b64512f5e6c28e,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:783,x:33026,y:33321,varname:node_783,prsc:2,tex:dc3378451af875e4f8b64512f5e6c28e,ntxv:0,isnm:False|UVIN-5132-OUT,TEX-1163-TEX;n:type:ShaderForge.SFN_Add,id:7477,x:32413,y:33663,varname:node_7477,prsc:2|A-415-OUT,B-3460-OUT;n:type:ShaderForge.SFN_Vector2,id:3460,x:32167,y:33681,varname:node_3460,prsc:2,v1:0.3,v2:0.75;n:type:ShaderForge.SFN_RemapRange,id:5650,x:32582,y:33606,varname:node_5650,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.7|IN-7477-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3096,x:31564,y:33654,varname:node_3096,prsc:2;n:type:ShaderForge.SFN_Relay,id:415,x:29495,y:32554,varname:node_415,prsc:2|IN-4076-OUT;n:type:ShaderForge.SFN_Append,id:2603,x:31773,y:33498,varname:node_2603,prsc:2|A-3096-Y,B-3096-Z;n:type:ShaderForge.SFN_Append,id:2942,x:31773,y:33638,varname:node_2942,prsc:2|A-3096-X,B-3096-Z;n:type:ShaderForge.SFN_Append,id:9936,x:31773,y:33797,varname:node_9936,prsc:2|A-3096-X,B-3096-Y;n:type:ShaderForge.SFN_VertexColor,id:4913,x:33592,y:32840,varname:node_4913,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9280,x:33863,y:32961,varname:node_9280,prsc:2|A-4913-RGB,B-6343-OUT;n:type:ShaderForge.SFN_ObjectScale,id:1971,x:28768,y:32738,varname:node_1971,prsc:2,rcp:False;n:type:ShaderForge.SFN_Multiply,id:4076,x:29194,y:32567,varname:node_4076,prsc:2|A-8924-UVOUT,B-6986-OUT;n:type:ShaderForge.SFN_RemapRange,id:6986,x:28975,y:32701,varname:node_6986,prsc:2,frmn:0,frmx:10,tomn:0,tomx:1|IN-1971-XYZ;n:type:ShaderForge.SFN_ValueProperty,id:1573,x:33986,y:32855,ptovrint:False,ptlb:node_1573,ptin:_node_1573,varname:node_1573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.7;n:type:ShaderForge.SFN_Multiply,id:655,x:34116,y:32936,varname:node_655,prsc:2|A-2161-RGB,B-9280-OUT;n:type:ShaderForge.SFN_Color,id:2161,x:33837,y:32700,ptovrint:False,ptlb:node_2161,ptin:_node_2161,varname:node_2161,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:1158,x:34121,y:32828,varname:node_1158,prsc:2|A-2161-RGB,B-9280-OUT;proporder:6665-7736-3512-7783-3112-5266-6414-5451-1489-3726-8262-1163-1573-2161;pass:END;sub:END;*/

Shader "Shader Forge/SnowTerrain" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _node_3512 ("node_3512", 2D) = "white" {}
        _node_7783 ("node_7783", Color) = (0.259,0.697,1,1)
        _node_2791_copy ("node_2791_copy", 2D) = "black" {}
        _node_5266 ("node_5266", Range(0, 1)) = 0.4802001
        _node_5266_copy ("node_5266_copy", Range(0, 1)) = 0
        _node_5451 ("node_5451", Range(0, 1)) = 0.5688539
        _node_2791_copy_copy ("node_2791_copy_copy", 2D) = "black" {}
        _nnnnnnn ("nnnnnnn", Range(0, 1)) = 0.4600001
        _node_8262 ("node_8262", 2D) = "white" {}
        _Normals ("Normals", 2D) = "bump" {}
        _node_1573 ("node_1573", Float ) = 1.7
        _node_2161 ("node_2161", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "DisableBatching"="True"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _node_3512; uniform float4 _node_3512_ST;
            uniform float4 _node_7783;
            uniform sampler2D _node_2791_copy; uniform float4 _node_2791_copy_ST;
            uniform float _node_5266;
            uniform float _node_5266_copy;
            uniform float _node_5451;
            uniform sampler2D _node_2791_copy_copy; uniform float4 _node_2791_copy_copy_ST;
            uniform float _nnnnnnn;
            uniform sampler2D _node_8262; uniform float4 _node_8262_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float4 _node_2161;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 node_415 = (float3(i.uv0,0.0)*(objScale*0.1+0.0));
                float3 node_5132 = ((node_415+float3(float2(1.5,1.2),0.0))*2.0+-1.0);
                float3 node_783 = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(node_5132, _Normals)));
                float3 node_5650 = ((node_415+float3(float2(0.3,0.75),0.0))*0.7+0.0);
                float4 _node_8262_var = tex2D(_node_8262,TRANSFORM_TEX(node_5650, _node_8262));
                float3 normalLocal = lerp(lerp(_BumpMap.rgb,node_783.rgb,_node_8262_var.rgb),float3(0,0,1),_nnnnnnn);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.25;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_9280 = (i.vertexColor.rgb*(_MainTex_var.rgb*_Color.rgb));
                float3 diffuseColor = (_node_2161.rgb+node_9280); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 w = _node_7783.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _node_3512_var = tex2D(_node_3512,TRANSFORM_TEX(i.uv0, _node_3512));
                float3 node_7234 = (node_415*0.5+0.0);
                float4 _node_2791_copy_var = tex2D(_node_2791_copy,TRANSFORM_TEX(node_7234, _node_2791_copy));
                float3 node_6329 = ((node_415*0.8+0.0)+float3(float2(3,4),0.0));
                float4 _node_2791_copy_copy_var = tex2D(_node_2791_copy_copy,TRANSFORM_TEX(node_6329, _node_2791_copy_copy));
                float node_9741 = pow(lerp(0.5*dot(lerp(normalize((_node_2791_copy_var.rgb*2.0+-1.0)),lightDirection,_node_5266),viewReflectDirection)+0.5,max(0,dot(lerp(normalize((_node_2791_copy_copy_var.rgb*2.0+-1.0)),lightDirection,_node_5266_copy),viewReflectDirection)),_node_5451),22.0);
                float3 node_6564 = (pow((_node_3512_var.rgb*20.0+0.0),2.0)*node_9741);
                float3 emissive = node_6564;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _node_3512; uniform float4 _node_3512_ST;
            uniform float4 _node_7783;
            uniform sampler2D _node_2791_copy; uniform float4 _node_2791_copy_ST;
            uniform float _node_5266;
            uniform float _node_5266_copy;
            uniform float _node_5451;
            uniform sampler2D _node_2791_copy_copy; uniform float4 _node_2791_copy_copy_ST;
            uniform float _nnnnnnn;
            uniform sampler2D _node_8262; uniform float4 _node_8262_ST;
            uniform sampler2D _Normals; uniform float4 _Normals_ST;
            uniform float4 _node_2161;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(i.uv0, _Normals)));
                float3 node_415 = (float3(i.uv0,0.0)*(objScale*0.1+0.0));
                float3 node_5132 = ((node_415+float3(float2(1.5,1.2),0.0))*2.0+-1.0);
                float3 node_783 = UnpackNormal(tex2D(_Normals,TRANSFORM_TEX(node_5132, _Normals)));
                float3 node_5650 = ((node_415+float3(float2(0.3,0.75),0.0))*0.7+0.0);
                float4 _node_8262_var = tex2D(_node_8262,TRANSFORM_TEX(node_5650, _node_8262));
                float3 normalLocal = lerp(lerp(_BumpMap.rgb,node_783.rgb,_node_8262_var.rgb),float3(0,0,1),_nnnnnnn);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.25;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_9280 = (i.vertexColor.rgb*(_MainTex_var.rgb*_Color.rgb));
                float3 diffuseColor = (_node_2161.rgb+node_9280); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, 0.0, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 w = _node_7783.rgb*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _node_3512; uniform float4 _node_3512_ST;
            uniform sampler2D _node_2791_copy; uniform float4 _node_2791_copy_ST;
            uniform float _node_5266;
            uniform float _node_5266_copy;
            uniform float _node_5451;
            uniform sampler2D _node_2791_copy_copy; uniform float4 _node_2791_copy_copy_ST;
            uniform float4 _node_2161;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _node_3512_var = tex2D(_node_3512,TRANSFORM_TEX(i.uv0, _node_3512));
                float3 node_415 = (float3(i.uv0,0.0)*(objScale*0.1+0.0));
                float3 node_7234 = (node_415*0.5+0.0);
                float4 _node_2791_copy_var = tex2D(_node_2791_copy,TRANSFORM_TEX(node_7234, _node_2791_copy));
                float3 node_6329 = ((node_415*0.8+0.0)+float3(float2(3,4),0.0));
                float4 _node_2791_copy_copy_var = tex2D(_node_2791_copy_copy,TRANSFORM_TEX(node_6329, _node_2791_copy_copy));
                float node_9741 = pow(lerp(0.5*dot(lerp(normalize((_node_2791_copy_var.rgb*2.0+-1.0)),lightDirection,_node_5266),viewReflectDirection)+0.5,max(0,dot(lerp(normalize((_node_2791_copy_copy_var.rgb*2.0+-1.0)),lightDirection,_node_5266_copy),viewReflectDirection)),_node_5451),22.0);
                float3 node_6564 = (pow((_node_3512_var.rgb*20.0+0.0),2.0)*node_9741);
                o.Emission = node_6564;
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_9280 = (i.vertexColor.rgb*(_MainTex_var.rgb*_Color.rgb));
                float3 diffColor = (_node_2161.rgb+node_9280);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 1.0 - 0.25;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
