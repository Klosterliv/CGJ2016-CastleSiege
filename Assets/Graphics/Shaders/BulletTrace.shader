// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:34756,y:33383,varname:node_4795,prsc:2|emission-1692-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:34187,y:33043,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-8272-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:5261,x:32934,y:33813,ptovrint:False,ptlb:distance,ptin:_distance,varname:_distance,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_TexCoord,id:879,x:32646,y:33518,varname:node_879,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:9121,x:32143,y:33449,varname:node_9121,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6839,x:32143,y:33677,ptovrint:False,ptlb:timestamp,ptin:_timestamp,varname:_timestamp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:30;n:type:ShaderForge.SFN_Subtract,id:9216,x:32054,y:33332,varname:node_9216,prsc:2|A-9121-T,B-6839-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9790,x:32262,y:33218,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:5748,x:32708,y:33225,varname:node_5748,prsc:2|A-9790-OUT,B-6839-OUT;n:type:ShaderForge.SFN_Append,id:8272,x:33453,y:33416,varname:node_8272,prsc:2|A-3438-OUT,B-879-V;n:type:ShaderForge.SFN_Multiply,id:3438,x:33198,y:33577,varname:node_3438,prsc:2|A-5723-OUT,B-5261-OUT,C-7684-OUT;n:type:ShaderForge.SFN_Panner,id:7930,x:33789,y:33741,varname:node_7930,prsc:2,spu:1,spv:0|UVIN-8272-OUT,DIST-5748-OUT;n:type:ShaderForge.SFN_Tex2d,id:6560,x:34192,y:33672,ptovrint:False,ptlb:node_6560,ptin:_node_6560,varname:_node_6560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:811d992445700fc429379264eba2d138,ntxv:0,isnm:False|UVIN-7930-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:5723,x:32984,y:33577,varname:node_5723,prsc:2|IN-879-U;n:type:ShaderForge.SFN_Multiply,id:1692,x:34417,y:33409,varname:node_1692,prsc:2|A-2053-RGB,B-797-RGB,C-6560-RGB,D-4969-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4969,x:33439,y:33223,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:_Brightness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:7684,x:33007,y:34046,ptovrint:False,ptlb:traceLength,ptin:_traceLength,varname:_traceLength,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;proporder:6074-797-5261-6839-9790-6560-4969-7684;pass:END;sub:END;*/

Shader "CGJ2016/BulletTrace" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _distance ("distance", Float ) = 3
        _timestamp ("timestamp", Float ) = 30
        _speed ("speed", Float ) = 0.2
        _node_6560 ("node_6560", 2D) = "white" {}
        _Brightness ("Brightness", Float ) = 10
        _traceLength ("traceLength", Float ) = 0.1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
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
            uniform float4 _TintColor;
            uniform float _distance;
            uniform float _timestamp;
            uniform float _speed;
            uniform sampler2D _node_6560; uniform float4 _node_6560_ST;
            uniform float _Brightness;
            uniform float _traceLength;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_8272 = float2(((1.0 - i.uv0.r)*_distance*_traceLength),i.uv0.g);
                float2 node_7930 = (node_8272+(_speed*_timestamp)*float2(1,0));
                float4 _node_6560_var = tex2D(_node_6560,TRANSFORM_TEX(node_7930, _node_6560));
                float3 emissive = (i.vertexColor.rgb*_TintColor.rgb*_node_6560_var.rgb*_Brightness);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
