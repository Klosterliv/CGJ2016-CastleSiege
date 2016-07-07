// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33592,y:32511,varname:node_4795,prsc:2|normal-9706-OUT,emission-2393-OUT,alpha-2249-OUT,clip-798-OUT,refract-9410-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31466,y:32477,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:398df227343444572afe5e225ddd06aa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32080,y:32586,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT,E-5781-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31444,y:32748,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31562,y:32908,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:31378,y:32657,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32091,y:32768,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A,D-6203-OUT;n:type:ShaderForge.SFN_Tex2d,id:5499,x:32217,y:32247,ptovrint:False,ptlb:DistortNormal,ptin:_DistortNormal,varname:_DistortNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ComponentMask,id:3405,x:32489,y:32459,varname:node_3405,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5499-RGB;n:type:ShaderForge.SFN_Multiply,id:9410,x:32864,y:33019,varname:node_9410,prsc:2|A-3405-OUT,B-4539-OUT;n:type:ShaderForge.SFN_Lerp,id:9706,x:32998,y:32413,varname:node_9706,prsc:2|A-3411-OUT,B-5499-RGB,T-9330-OUT;n:type:ShaderForge.SFN_Vector3,id:3411,x:32520,y:32129,varname:node_3411,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:3067,x:32020,y:33088,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:_Distortion,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5664193,max:1;n:type:ShaderForge.SFN_Multiply,id:4539,x:32653,y:33198,varname:node_4539,prsc:2|A-9330-OUT,B-3556-OUT;n:type:ShaderForge.SFN_Vector1,id:3556,x:32358,y:33316,varname:node_3556,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:6888,x:32864,y:32955,varname:node_6888,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Max,id:3885,x:32927,y:32631,varname:node_3885,prsc:2|A-5499-R,B-5499-G;n:type:ShaderForge.SFN_Vector1,id:6091,x:32927,y:32745,varname:node_6091,prsc:2,v1:9;n:type:ShaderForge.SFN_Multiply,id:3483,x:33131,y:32631,varname:node_3483,prsc:2|A-3885-OUT,B-6091-OUT;n:type:ShaderForge.SFN_Multiply,id:9330,x:32382,y:32947,varname:node_9330,prsc:2|A-798-OUT,B-3067-OUT;n:type:ShaderForge.SFN_Multiply,id:2249,x:33211,y:32811,varname:node_2249,prsc:2|A-798-OUT,B-6888-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6203,x:31748,y:33347,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:_opacity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.7;n:type:ShaderForge.SFN_ValueProperty,id:5781,x:31739,y:32448,ptovrint:False,ptlb:color_str,ptin:_color_str,varname:_color_str,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.7;proporder:6074-797-5499-3067-6203-5781;pass:END;sub:END;*/

Shader "CGJ2016/DistortTinted" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _DistortNormal ("DistortNormal", 2D) = "bump" {}
        _Distortion ("Distortion", Range(0, 1)) = 0.5664193
        _opacity ("opacity", Float ) = 0.7
        _color_str ("color_str", Float ) = 0.7
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _DistortNormal; uniform float4 _DistortNormal_ST;
            uniform float _Distortion;
            uniform float _opacity;
            uniform float _color_str;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _DistortNormal_var = UnpackNormal(tex2D(_DistortNormal,TRANSFORM_TEX(i.uv0, _DistortNormal)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_798 = (_MainTex_var.a*i.vertexColor.a*_TintColor.a*_opacity);
                float node_9330 = (node_798*_Distortion);
                float3 normalLocal = lerp(float3(0,0,1),_DistortNormal_var.rgb,node_9330);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_DistortNormal_var.rgb.rg*(node_9330*0.2));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                clip(node_798 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0*_color_str);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(node_798*0.6)),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
