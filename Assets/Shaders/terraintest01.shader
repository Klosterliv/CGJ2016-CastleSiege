// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:34491,y:32923,varname:node_2865,prsc:2|diff-1741-OUT,spec-358-OUT,gloss-1813-OUT,custl-1741-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32348,y:33120,varname:node_6343,prsc:2|A-2843-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:32012,y:33257,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31944,y:33009,ptovrint:True,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:358,x:32674,y:33220,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32674,y:33322,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:201,x:30915,y:32246,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:_Splat0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7123,x:31028,y:32411,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4773,x:31092,y:32475,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7091,x:31157,y:32554,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1299,x:30778,y:32487,ptovrint:False,ptlb:Normal0,ptin:_Normal0,varname:_Normal0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7605,x:30842,y:32551,ptovrint:False,ptlb:Normal1,ptin:_Normal1,varname:_Normal1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:1422,x:30906,y:32615,ptovrint:False,ptlb:Normal2,ptin:_Normal2,varname:_Normal2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3746,x:30970,y:32679,ptovrint:False,ptlb:Normal3,ptin:_Normal3,varname:_Normal3,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:8917,x:31078,y:32962,ptovrint:False,ptlb:Control,ptin:_Control,varname:_Control,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9927,x:31446,y:32941,varname:_node_9927,prsc:2,ntxv:0,isnm:False|TEX-8917-TEX;n:type:ShaderForge.SFN_Tex2d,id:7372,x:31559,y:32138,varname:_node_6993,prsc:2,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False|TEX-201-TEX;n:type:ShaderForge.SFN_Tex2d,id:8544,x:31559,y:32302,varname:_node_6993_copy,prsc:2,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False|TEX-7123-TEX;n:type:ShaderForge.SFN_Tex2d,id:7562,x:31559,y:32478,varname:_node_6993_copy_copy,prsc:2,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False|TEX-4773-TEX;n:type:ShaderForge.SFN_Tex2d,id:2843,x:31559,y:32656,varname:_node_6993_copy_copy_copy,prsc:2,tex:8d44b577193f04b4fb1e6ddccfe87fae,ntxv:0,isnm:False|TEX-7091-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:4731,x:32122,y:32533,varname:node_4731,prsc:2,chbt:0|M-6969-OUT,R-7372-RGB,G-8544-RGB,B-7562-RGB,A-2843-RGB;n:type:ShaderForge.SFN_Append,id:6969,x:31626,y:32978,varname:node_6969,prsc:2|A-9927-RGB,B-9927-B;n:type:ShaderForge.SFN_Tex2dAsset,id:1880,x:31278,y:33613,ptovrint:False,ptlb:Cliffs,ptin:_Cliffs,varname:_Cliffs,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:6920,x:31712,y:33713,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:7993,x:31868,y:33713,varname:node_7993,prsc:2|IN-6920-OUT;n:type:ShaderForge.SFN_Multiply,id:1052,x:32048,y:33713,varname:node_1052,prsc:2|A-7993-OUT,B-7993-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5898,x:32266,y:33746,varname:node_5898,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1052-OUT;n:type:ShaderForge.SFN_Tex2d,id:2279,x:31732,y:33469,varname:_node_2279,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-7758-OUT,TEX-1880-TEX;n:type:ShaderForge.SFN_Power,id:5470,x:32480,y:33803,varname:node_5470,prsc:2|VAL-5898-OUT,EXP-1529-OUT;n:type:ShaderForge.SFN_Vector1,id:1529,x:32282,y:33952,varname:node_1529,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Multiply,id:5343,x:32667,y:33787,varname:node_5343,prsc:2|A-5898-OUT,B-1399-OUT;n:type:ShaderForge.SFN_Vector1,id:1399,x:32346,y:34016,varname:node_1399,prsc:2,v1:2;n:type:ShaderForge.SFN_Blend,id:5141,x:32962,y:33871,varname:node_5141,prsc:2,blmd:3,clmp:True|SRC-2279-R,DST-5343-OUT;n:type:ShaderForge.SFN_Clamp01,id:5048,x:32508,y:33562,varname:node_5048,prsc:2|IN-5141-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5513,x:31324,y:34063,varname:node_5513,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:8732,x:31761,y:33901,varname:_node_1598,prsc:2,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-8646-OUT,TEX-1880-TEX;n:type:ShaderForge.SFN_Append,id:4915,x:30796,y:33198,varname:node_4915,prsc:2|A-5513-Z,B-5513-X;n:type:ShaderForge.SFN_Append,id:8646,x:31595,y:34209,varname:node_8646,prsc:2|A-5513-X,B-5513-Y;n:type:ShaderForge.SFN_Append,id:7758,x:31577,y:34396,varname:node_7758,prsc:2|A-5513-Y,B-5513-Z;n:type:ShaderForge.SFN_ComponentMask,id:7048,x:32388,y:34121,varname:node_7048,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1052-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:1741,x:33638,y:33520,varname:node_1741,prsc:2,chbt:0|M-5272-OUT,R-2279-RGB,G-6343-OUT,B-8732-RGB;n:type:ShaderForge.SFN_Subtract,id:8599,x:32895,y:34078,varname:node_8599,prsc:2|A-7048-OUT,B-5048-OUT;n:type:ShaderForge.SFN_ComponentMask,id:139,x:32388,y:34289,varname:node_139,prsc:2,cc1:2,cc2:-1,cc3:-1,cc4:-1|IN-1052-OUT;n:type:ShaderForge.SFN_Subtract,id:2664,x:32912,y:34211,varname:node_2664,prsc:2|A-139-OUT,B-5048-OUT;n:type:ShaderForge.SFN_Append,id:5272,x:33549,y:34010,varname:node_5272,prsc:2|A-3391-OUT,B-5048-OUT,C-3196-OUT;n:type:ShaderForge.SFN_Clamp01,id:3391,x:33091,y:34037,varname:node_3391,prsc:2|IN-8599-OUT;n:type:ShaderForge.SFN_Clamp01,id:3196,x:33182,y:34153,varname:node_3196,prsc:2|IN-2664-OUT;proporder:6665-7736-358-1813-201-7123-4773-7091-8917-1880;pass:END;sub:END;*/

Shader "CGJ2016/terraintest01" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _Control ("Control", 2D) = "white" {}
        _Cliffs ("Cliffs", 2D) = "white" {}
    }
    SubShader {
        Tags {
        	"SplatMapCount"="4"
            "RenderType"="Opaque"
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
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Cliffs; uniform float4 _Cliffs_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
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
                float gloss = _Gloss;
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
                float3 node_7993 = abs(i.normalDir);
                float3 node_1052 = (node_7993*node_7993);
                float2 node_7758 = float2(i.posWorld.g,i.posWorld.b);
                float4 _node_2279 = tex2D(_Cliffs,TRANSFORM_TEX(node_7758, _Cliffs));
                float node_5898 = node_1052.g;
                float node_5048 = saturate(saturate((_node_2279.r+(node_5898*2.0)-1.0)));
                float3 node_5272 = float3(saturate((node_1052.r-node_5048)),node_5048,saturate((node_1052.b-node_5048)));
                float4 _node_6993_copy_copy_copy = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 node_6343 = (_node_6993_copy_copy_copy.rgb*_Color.rgb);
                float2 node_8646 = float2(i.posWorld.r,i.posWorld.g);
                float4 _node_1598 = tex2D(_Cliffs,TRANSFORM_TEX(node_8646, _Cliffs));
                float3 node_1741 = (node_5272.r*_node_2279.rgb + node_5272.g*node_6343 + node_5272.b*_node_1598.rgb);
                float3 diffuseColor = node_1741; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
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
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Cliffs; uniform float4 _Cliffs_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
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
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 node_7993 = abs(i.normalDir);
                float3 node_1052 = (node_7993*node_7993);
                float2 node_7758 = float2(i.posWorld.g,i.posWorld.b);
                float4 _node_2279 = tex2D(_Cliffs,TRANSFORM_TEX(node_7758, _Cliffs));
                float node_5898 = node_1052.g;
                float node_5048 = saturate(saturate((_node_2279.r+(node_5898*2.0)-1.0)));
                float3 node_5272 = float3(saturate((node_1052.r-node_5048)),node_5048,saturate((node_1052.b-node_5048)));
                float4 _node_6993_copy_copy_copy = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 node_6343 = (_node_6993_copy_copy_copy.rgb*_Color.rgb);
                float2 node_8646 = float2(i.posWorld.r,i.posWorld.g);
                float4 _node_1598 = tex2D(_Cliffs,TRANSFORM_TEX(node_8646, _Cliffs));
                float3 node_1741 = (node_5272.r*_node_2279.rgb + node_5272.g*node_6343 + node_5272.b*_node_1598.rgb);
                float3 diffuseColor = node_1741; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
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
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
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
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _Cliffs; uniform float4 _Cliffs_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float3 node_7993 = abs(i.normalDir);
                float3 node_1052 = (node_7993*node_7993);
                float2 node_7758 = float2(i.posWorld.g,i.posWorld.b);
                float4 _node_2279 = tex2D(_Cliffs,TRANSFORM_TEX(node_7758, _Cliffs));
                float node_5898 = node_1052.g;
                float node_5048 = saturate(saturate((_node_2279.r+(node_5898*2.0)-1.0)));
                float3 node_5272 = float3(saturate((node_1052.r-node_5048)),node_5048,saturate((node_1052.b-node_5048)));
                float4 _node_6993_copy_copy_copy = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 node_6343 = (_node_6993_copy_copy_copy.rgb*_Color.rgb);
                float2 node_8646 = float2(i.posWorld.r,i.posWorld.g);
                float4 _node_1598 = tex2D(_Cliffs,TRANSFORM_TEX(node_8646, _Cliffs));
                float3 node_1741 = (node_5272.r*_node_2279.rgb + node_5272.g*node_6343 + node_5272.b*_node_1598.rgb);
                float3 diffColor = node_1741;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
