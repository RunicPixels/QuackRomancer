// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5531-RGB,alpha-4201-OUT,clip-249-OUT;n:type:ShaderForge.SFN_Tex2d,id:409,x:31696,y:32689,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_409,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:13a7e0b4ff7fb4a47b685b21c6a7b4bf,ntxv:0,isnm:False|UVIN-2836-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8384,x:30487,y:32257,varname:node_8384,prsc:2;n:type:ShaderForge.SFN_Append,id:2542,x:30695,y:32281,varname:node_2542,prsc:2|A-8384-X,B-8384-Z;n:type:ShaderForge.SFN_Step,id:4028,x:32203,y:32866,varname:node_4028,prsc:2|A-852-OUT,B-5531-A;n:type:ShaderForge.SFN_Vector1,id:249,x:32505,y:33172,varname:node_249,prsc:2,v1:0.5;n:type:ShaderForge.SFN_VertexColor,id:5531,x:31919,y:32935,varname:node_5531,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:9494,x:31877,y:32706,varname:node_9494,prsc:2|IN-409-R;n:type:ShaderForge.SFN_Tex2d,id:3989,x:31922,y:33200,ptovrint:False,ptlb:DefaultParticle,ptin:_DefaultParticle,varname:node_3989,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:3415,x:32197,y:33073,varname:node_3415,prsc:2|A-7548-OUT,B-3989-R;n:type:ShaderForge.SFN_Vector1,id:7548,x:31880,y:33102,varname:node_7548,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Min,id:4201,x:32427,y:32955,varname:node_4201,prsc:2|A-4028-OUT,B-3415-OUT;n:type:ShaderForge.SFN_Tex2d,id:9633,x:30915,y:32281,ptovrint:False,ptlb:UVOffset,ptin:_UVOffset,varname:node_9633,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:13a7e0b4ff7fb4a47b685b21c6a7b4bf,ntxv:0,isnm:False|UVIN-2542-OUT;n:type:ShaderForge.SFN_Add,id:2515,x:31251,y:32614,varname:node_2515,prsc:2|A-8384-X,B-4763-OUT;n:type:ShaderForge.SFN_Multiply,id:4763,x:31205,y:32327,varname:node_4763,prsc:2|A-9633-R,B-1504-OUT;n:type:ShaderForge.SFN_Vector1,id:1504,x:31049,y:32404,varname:node_1504,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:3706,x:31011,y:32495,varname:node_3706,prsc:2|A-9633-R,B-3603-OUT;n:type:ShaderForge.SFN_Vector1,id:3603,x:30828,y:32559,varname:node_3603,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:8302,x:31251,y:32772,varname:node_8302,prsc:2|A-8384-Z,B-3706-OUT;n:type:ShaderForge.SFN_Append,id:2836,x:31439,y:32688,varname:node_2836,prsc:2|A-2515-OUT,B-8302-OUT;n:type:ShaderForge.SFN_Tex2d,id:6300,x:31590,y:32296,ptovrint:False,ptlb:OverallMultiplier,ptin:_OverallMultiplier,varname:node_6300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:13a7e0b4ff7fb4a47b685b21c6a7b4bf,ntxv:0,isnm:False|UVIN-6967-UVOUT;n:type:ShaderForge.SFN_Slider,id:7531,x:31645,y:32510,ptovrint:False,ptlb:MultiplierIntensity,ptin:_MultiplierIntensity,varname:node_7531,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:4587,x:32093,y:32382,varname:node_4587,prsc:2|A-3308-OUT,B-2436-OUT,T-7531-OUT;n:type:ShaderForge.SFN_Vector1,id:3308,x:31876,y:32179,varname:node_3308,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:852,x:32037,y:32687,varname:node_852,prsc:2|A-4587-OUT,B-9494-OUT;n:type:ShaderForge.SFN_Multiply,id:2436,x:31876,y:32292,varname:node_2436,prsc:2|A-6300-R,B-2897-OUT;n:type:ShaderForge.SFN_Vector1,id:2897,x:31723,y:32432,varname:node_2897,prsc:2,v1:2.5;n:type:ShaderForge.SFN_Rotator,id:6967,x:31156,y:32069,varname:node_6967,prsc:2|UVIN-2542-OUT,ANG-1294-OUT;n:type:ShaderForge.SFN_Vector1,id:1294,x:30883,y:32072,varname:node_1294,prsc:2,v1:1;proporder:409-3989-9633-6300-7531;pass:END;sub:END;*/

Shader "Shader Forge/Sh_KroosTest_v1" {
    Properties {
        _Noise ("Noise", 2D) = "white" {}
        _DefaultParticle ("DefaultParticle", 2D) = "white" {}
        _UVOffset ("UVOffset", 2D) = "white" {}
        _OverallMultiplier ("OverallMultiplier", 2D) = "white" {}
        _MultiplierIntensity ("MultiplierIntensity", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _DefaultParticle; uniform float4 _DefaultParticle_ST;
            uniform sampler2D _UVOffset; uniform float4 _UVOffset_ST;
            uniform sampler2D _OverallMultiplier; uniform float4 _OverallMultiplier_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _MultiplierIntensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                clip(0.5 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = i.vertexColor.rgb;
                float3 finalColor = emissive;
                float node_3308 = 1.0;
                float node_6967_ang = 1.0;
                float node_6967_spd = 1.0;
                float node_6967_cos = cos(node_6967_spd*node_6967_ang);
                float node_6967_sin = sin(node_6967_spd*node_6967_ang);
                float2 node_6967_piv = float2(0.5,0.5);
                float2 node_2542 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_6967 = (mul(node_2542-node_6967_piv,float2x2( node_6967_cos, -node_6967_sin, node_6967_sin, node_6967_cos))+node_6967_piv);
                float4 _OverallMultiplier_var = tex2D(_OverallMultiplier,TRANSFORM_TEX(node_6967, _OverallMultiplier));
                float _MultiplierIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MultiplierIntensity );
                float4 _UVOffset_var = tex2D(_UVOffset,TRANSFORM_TEX(node_2542, _UVOffset));
                float2 node_2836 = float2((i.posWorld.r+(_UVOffset_var.r*0.1)),(i.posWorld.b+(_UVOffset_var.r*0.2)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_2836, _Noise));
                float4 _DefaultParticle_var = tex2D(_DefaultParticle,TRANSFORM_TEX(i.uv0, _DefaultParticle));
                return fixed4(finalColor,min(step((lerp(node_3308,(_OverallMultiplier_var.r*2.5),_MultiplierIntensity_var)*(1.0 - _Noise_var.r)),i.vertexColor.a),step(0.01,_DefaultParticle_var.r)));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                clip(0.5 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
