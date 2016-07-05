// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33880,y:32770,varname:node_4795,prsc:2|custl-8984-OUT,clip-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32387,y:32555,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0000000000000000f000000000000000,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:33157,y:32999,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT,E-3093-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32797,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6323529,c2:0.06044548,c3:0.06044548,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33111,varname:node_9248,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:798,x:32982,y:32849,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Tex2dAsset,id:318,x:31853,y:33186,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:335d39ac920954c01ac193e693291d4a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6277,x:32253,y:33202,varname:_node_6277,prsc:2,tex:335d39ac920954c01ac193e693291d4a,ntxv:0,isnm:False|TEX-318-TEX;n:type:ShaderForge.SFN_ValueProperty,id:6214,x:33273,y:33562,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:959,x:33431,y:33326,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:8905,x:33354,y:33744,ptovrint:False,ptlb:node_8905,ptin:_node_8905,varname:_node_8905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:12.92443,max:15;n:type:ShaderForge.SFN_ViewReflectionVector,id:1694,x:31722,y:32424,varname:node_1694,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:2849,x:31891,y:32516,varname:node_2849,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1694-OUT;n:type:ShaderForge.SFN_LightVector,id:5739,x:32222,y:33439,varname:node_5739,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:767,x:32021,y:33341,varname:_node_767,prsc:2,tex:335d39ac920954c01ac193e693291d4a,ntxv:0,isnm:False|TEX-318-TEX;n:type:ShaderForge.SFN_Dot,id:5177,x:32797,y:33222,varname:node_5177,prsc:2,dt:0|A-3521-XYZ,B-2494-OUT;n:type:ShaderForge.SFN_Transform,id:3521,x:32489,y:33238,varname:node_3521,prsc:2,tffrom:1,tfto:0|IN-6277-RGB;n:type:ShaderForge.SFN_HalfVector,id:2494,x:32463,y:33479,varname:node_2494,prsc:2;n:type:ShaderForge.SFN_Power,id:7804,x:33033,y:33347,varname:node_7804,prsc:2|VAL-5177-OUT,EXP-5947-OUT;n:type:ShaderForge.SFN_Vector1,id:5947,x:32993,y:33658,varname:node_5947,prsc:2,v1:20;n:type:ShaderForge.SFN_LightAttenuation,id:3093,x:32889,y:33116,varname:node_3093,prsc:2;n:type:ShaderForge.SFN_Add,id:1761,x:33325,y:33063,varname:node_1761,prsc:2|A-2393-OUT,B-7804-OUT;n:type:ShaderForge.SFN_Fresnel,id:8984,x:32510,y:33871,varname:node_8984,prsc:2|NRM-3521-XYZ;n:type:ShaderForge.SFN_Multiply,id:1335,x:33250,y:33243,varname:node_1335,prsc:2|A-3093-OUT;n:type:ShaderForge.SFN_Multiply,id:3192,x:32846,y:33543,varname:node_3192,prsc:2|A-8984-OUT,B-5947-OUT;proporder:6074-797-6214-959-318-8905;pass:END;sub:END;*/

Shader "CGJ2016/blood" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.6323529,0.06044548,0.06044548,1)
        _Metallic ("Metallic", Float ) = 0
        _Gloss ("Gloss", Float ) = 1
        _Normal ("Normal", 2D) = "white" {}
        _node_8905 ("node_8905", Range(0, 15)) = 12.92443
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a*i.vertexColor.a*_TintColor.a) - 0.5);
////// Lighting:
                float4 _node_6277 = tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal));
                float3 node_3521 = mul( _Object2World, float4(_node_6277.rgb,0) ).xyz;
                float node_8984 = (1.0-max(0,dot(node_3521.rgb, viewDirection)));
                float3 finalColor = float3(node_8984,node_8984,node_8984);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
