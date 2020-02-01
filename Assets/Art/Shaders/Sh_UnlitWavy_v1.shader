// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|emission-3250-OUT,voffset-5723-OUT;n:type:ShaderForge.SFN_Tex2d,id:1069,x:31845,y:32719,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_1069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6d92e0c1282657641b285b81a466081b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3250,x:32326,y:32742,varname:node_3250,prsc:2|A-1069-RGB,B-4462-OUT,T-5912-OUT;n:type:ShaderForge.SFN_Add,id:4462,x:32044,y:32868,varname:node_4462,prsc:2|A-1069-RGB,B-1069-RGB;n:type:ShaderForge.SFN_Slider,id:5912,x:31874,y:32601,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_5912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.35,max:1;n:type:ShaderForge.SFN_VertexColor,id:5792,x:31551,y:32961,varname:node_5792,prsc:2;n:type:ShaderForge.SFN_Sin,id:5367,x:31461,y:33211,varname:node_5367,prsc:2|IN-653-OUT;n:type:ShaderForge.SFN_Multiply,id:7693,x:32139,y:33133,varname:node_7693,prsc:2|A-8389-OUT,B-9383-OUT,C-9562-OUT;n:type:ShaderForge.SFN_Time,id:2329,x:31075,y:33171,varname:node_2329,prsc:2;n:type:ShaderForge.SFN_Slider,id:3161,x:30883,y:33322,ptovrint:False,ptlb:WavynessSpeed,ptin:_WavynessSpeed,varname:node_3161,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:5;n:type:ShaderForge.SFN_Slider,id:9562,x:31801,y:33596,ptovrint:False,ptlb:Wavyness,ptin:_Wavyness,varname:node_9562,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:653,x:31277,y:33211,varname:node_653,prsc:2|A-2329-T,B-3161-OUT;n:type:ShaderForge.SFN_Append,id:5723,x:32415,y:33142,varname:node_5723,prsc:2|A-8355-OUT,B-8355-OUT,C-7693-OUT;n:type:ShaderForge.SFN_Vector1,id:8355,x:32139,y:33072,varname:node_8355,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:9383,x:31794,y:33234,varname:node_9383,prsc:2|A-5367-OUT,B-9296-OUT,C-4504-OUT;n:type:ShaderForge.SFN_Add,id:195,x:31202,y:33379,varname:node_195,prsc:2|A-3161-OUT,B-3161-OUT;n:type:ShaderForge.SFN_Multiply,id:2112,x:31387,y:33457,varname:node_2112,prsc:2|A-2329-T,B-195-OUT;n:type:ShaderForge.SFN_Sin,id:9296,x:31568,y:33443,varname:node_9296,prsc:2|IN-2112-OUT;n:type:ShaderForge.SFN_Multiply,id:4504,x:31815,y:33393,varname:node_4504,prsc:2|A-3959-OUT,B-9562-OUT;n:type:ShaderForge.SFN_Vector1,id:3959,x:31568,y:33665,varname:node_3959,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Power,id:8389,x:31842,y:32986,varname:node_8389,prsc:2|VAL-5792-R,EXP-6280-OUT;n:type:ShaderForge.SFN_Vector1,id:6280,x:31671,y:33129,varname:node_6280,prsc:2,v1:2;proporder:1069-5912-3161-9562;pass:END;sub:END;*/

Shader "Shader Forge/Sh_UnlitWavy_v1" {
    Properties {
        _MainTexture ("MainTexture", 2D) = "white" {}
        _Brightness ("Brightness", Range(0, 1)) = 0.35
        _WavynessSpeed ("WavynessSpeed", Range(0, 5)) = 0.2
        _Wavyness ("Wavyness", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Brightness)
                UNITY_DEFINE_INSTANCED_PROP( float, _WavynessSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _Wavyness)
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
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float node_8355 = 0.0;
                float4 node_2329 = _Time;
                float _WavynessSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WavynessSpeed );
                float _Wavyness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Wavyness );
                v.vertex.xyz += float3(node_8355,node_8355,(pow(o.vertexColor.r,2.0)*(sin((node_2329.g*_WavynessSpeed_var))+sin((node_2329.g*(_WavynessSpeed_var+_WavynessSpeed_var)))+(0.3*_Wavyness_var))*_Wavyness_var));
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
////// Emissive:
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float _Brightness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Brightness );
                float3 emissive = lerp(_MainTexture_var.rgb,(_MainTexture_var.rgb+_MainTexture_var.rgb),_Brightness_var);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _WavynessSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _Wavyness)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.vertexColor = v.vertexColor;
                float node_8355 = 0.0;
                float4 node_2329 = _Time;
                float _WavynessSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WavynessSpeed );
                float _Wavyness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Wavyness );
                v.vertex.xyz += float3(node_8355,node_8355,(pow(o.vertexColor.r,2.0)*(sin((node_2329.g*_WavynessSpeed_var))+sin((node_2329.g*(_WavynessSpeed_var+_WavynessSpeed_var)))+(0.3*_Wavyness_var))*_Wavyness_var));
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
