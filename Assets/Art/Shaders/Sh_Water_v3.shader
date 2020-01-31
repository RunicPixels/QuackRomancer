// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:1000,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33084,y:32712,varname:node_2865,prsc:2|diff-940-OUT;n:type:ShaderForge.SFN_DepthBlend,id:6631,x:30708,y:33302,varname:node_6631,prsc:2|DIST-2273-OUT;n:type:ShaderForge.SFN_Clamp01,id:799,x:30869,y:33302,varname:node_799,prsc:2|IN-6631-OUT;n:type:ShaderForge.SFN_OneMinus,id:4285,x:31046,y:33302,varname:node_4285,prsc:2|IN-799-OUT;n:type:ShaderForge.SFN_Code,id:229,x:32153,y:32673,varname:node_229,prsc:2,code:aQBmACAAKAB2AGEAbAB1AGUAIAA+ACAALgA1ACkAewAKAHIAZQB0AHUAcgBuACAAMQA7AAoAfQAKAGUAbABzAGUAewAKAHIAZQB0AHUAcgBuACAAMAA7AAoAfQA=,output:0,fname:Function,width:391,height:132,input:0,input_1_label:value|A-5315-OUT;n:type:ShaderForge.SFN_Slider,id:2273,x:30385,y:33302,ptovrint:False,ptlb:DepthBlendValue,ptin:_DepthBlendValue,varname:node_2273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Lerp,id:4280,x:32462,y:33103,varname:node_4280,prsc:2|A-2953-RGB,B-4632-RGB,T-4018-OUT;n:type:ShaderForge.SFN_Color,id:4632,x:32193,y:33231,ptovrint:False,ptlb:ShallowColor,ptin:_ShallowColor,varname:node_4632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2028302,c2:0.9343262,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:2953,x:32193,y:33061,ptovrint:False,ptlb:DeepColor,ptin:_DeepColor,varname:node_2953,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2122642,c2:0.4496019,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:2027,x:31210,y:33302,varname:DepthBlendFloat,prsc:2|IN-4285-OUT;n:type:ShaderForge.SFN_Get,id:4018,x:32172,y:33386,varname:node_4018,prsc:2|IN-2027-OUT;n:type:ShaderForge.SFN_Tex2d,id:5060,x:29841,y:32076,varname:node_5060,prsc:2,tex:13a7e0b4ff7fb4a47b685b21c6a7b4bf,ntxv:0,isnm:False|UVIN-9021-UVOUT,TEX-315-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:6643,x:29101,y:31986,varname:node_6643,prsc:2;n:type:ShaderForge.SFN_Append,id:531,x:29274,y:31986,varname:node_531,prsc:2|A-6643-X,B-6643-Z;n:type:ShaderForge.SFN_Time,id:4708,x:29274,y:32284,varname:node_4708,prsc:2;n:type:ShaderForge.SFN_Slider,id:3884,x:29117,y:32211,ptovrint:False,ptlb:WaterFlowSpeed,ptin:_WaterFlowSpeed,varname:node_3884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7263,x:29461,y:32255,varname:node_7263,prsc:2|A-3884-OUT,B-4708-T;n:type:ShaderForge.SFN_Panner,id:9021,x:29672,y:32076,varname:node_9021,prsc:2,spu:1,spv:1|UVIN-7890-UVOUT,DIST-7263-OUT;n:type:ShaderForge.SFN_Rotator,id:7890,x:29464,y:31986,varname:node_7890,prsc:2|UVIN-531-OUT,ANG-6538-OUT;n:type:ShaderForge.SFN_Vector1,id:6538,x:29274,y:32122,varname:node_6538,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:9470,x:30856,y:32521,varname:node_9470,prsc:2|A-5212-OUT,B-4810-OUT,T-1640-OUT;n:type:ShaderForge.SFN_Slider,id:1640,x:30523,y:32600,ptovrint:False,ptlb:FlowyWaterDepthInfluence,ptin:_FlowyWaterDepthInfluence,varname:node_1640,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:940,x:32765,y:32952,varname:node_940,prsc:2|A-229-OUT,B-4280-OUT;n:type:ShaderForge.SFN_Multiply,id:8123,x:30061,y:32001,varname:node_8123,prsc:2|A-282-OUT,B-5060-R;n:type:ShaderForge.SFN_Slider,id:282,x:29684,y:31964,ptovrint:False,ptlb:FlowyWaterWobblyness,ptin:_FlowyWaterWobblyness,varname:node_282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:20;n:type:ShaderForge.SFN_Sin,id:5212,x:30060,y:32797,varname:node_5212,prsc:2|IN-7051-OUT;n:type:ShaderForge.SFN_Multiply,id:3925,x:29680,y:32858,varname:node_3925,prsc:2|A-4561-OUT,B-4238-OUT;n:type:ShaderForge.SFN_Slider,id:4561,x:29263,y:32915,ptovrint:False,ptlb:FlowyWaterRingThickness,ptin:_FlowyWaterRingThickness,varname:node_4561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:100;n:type:ShaderForge.SFN_Get,id:4810,x:30659,y:32521,varname:node_4810,prsc:2|IN-2027-OUT;n:type:ShaderForge.SFN_Add,id:7051,x:29871,y:32797,varname:node_7051,prsc:2|A-6968-OUT,B-3925-OUT,C-8123-OUT;n:type:ShaderForge.SFN_Add,id:5315,x:31975,y:32674,varname:node_5315,prsc:2|A-9470-OUT,B-1618-OUT;n:type:ShaderForge.SFN_Multiply,id:1618,x:31793,y:32674,varname:node_1618,prsc:2|A-3968-OUT,B-7886-OUT;n:type:ShaderForge.SFN_Vector1,id:7886,x:31622,y:32727,varname:node_7886,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Get,id:3968,x:31622,y:32674,varname:node_3968,prsc:2|IN-2027-OUT;n:type:ShaderForge.SFN_Get,id:4238,x:29458,y:33005,varname:node_4238,prsc:2|IN-2027-OUT;n:type:ShaderForge.SFN_Time,id:70,x:29382,y:32741,varname:node_70,prsc:2;n:type:ShaderForge.SFN_Slider,id:2513,x:29245,y:32678,ptovrint:False,ptlb:WaterRingSpeed,ptin:_WaterRingSpeed,varname:node_2513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:6968,x:29589,y:32695,varname:node_6968,prsc:2|A-2513-OUT,B-70-T;n:type:ShaderForge.SFN_Tex2dAsset,id:315,x:29672,y:32269,ptovrint:False,ptlb:FlowyWaterNoise,ptin:_FlowyWaterNoise,varname:node_315,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:13a7e0b4ff7fb4a47b685b21c6a7b4bf,ntxv:0,isnm:False;proporder:2953-4632-2273-3884-1640-282-4561-2513-315;pass:END;sub:END;*/

Shader "Shader Forge/Water_v3" {
    Properties {
        _DeepColor ("DeepColor", Color) = (0.2122642,0.4496019,1,1)
        _ShallowColor ("ShallowColor", Color) = (0.2028302,0.9343262,1,1)
        _DepthBlendValue ("DepthBlendValue", Range(0, 5)) = 1
        _WaterFlowSpeed ("WaterFlowSpeed", Range(0, 1)) = 0
        _FlowyWaterDepthInfluence ("FlowyWaterDepthInfluence", Range(0, 1)) = 0.5
        _FlowyWaterWobblyness ("FlowyWaterWobblyness", Range(0, 20)) = 0.5
        _FlowyWaterRingThickness ("FlowyWaterRingThickness", Range(0, 100)) = 10
        _WaterRingSpeed ("WaterRingSpeed", Range(0, 5)) = 0
        _FlowyWaterNoise ("FlowyWaterNoise", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "Queue"="Geometry+1000"
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
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
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            float Function( float value ){
            if (value > .5){
            return 1;
            }
            else{
            return 0;
            }
            }
            
            uniform sampler2D _FlowyWaterNoise; uniform float4 _FlowyWaterNoise_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DepthBlendValue)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ShallowColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DeepColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterFlowSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterDepthInfluence)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterWobblyness)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterRingThickness)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterRingSpeed)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
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
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
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
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - 0;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float _WaterRingSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterRingSpeed );
                float4 node_70 = _Time;
                float _FlowyWaterRingThickness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterRingThickness );
                float _DepthBlendValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthBlendValue );
                float DepthBlendFloat = (1.0 - saturate(saturate((sceneZ-partZ)/_DepthBlendValue_var)));
                float _FlowyWaterWobblyness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterWobblyness );
                float _WaterFlowSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterFlowSpeed );
                float4 node_4708 = _Time;
                float node_7890_ang = 1.0;
                float node_7890_spd = 1.0;
                float node_7890_cos = cos(node_7890_spd*node_7890_ang);
                float node_7890_sin = sin(node_7890_spd*node_7890_ang);
                float2 node_7890_piv = float2(0.5,0.5);
                float2 node_7890 = (mul(float2(i.posWorld.r,i.posWorld.b)-node_7890_piv,float2x2( node_7890_cos, -node_7890_sin, node_7890_sin, node_7890_cos))+node_7890_piv);
                float2 node_9021 = (node_7890+(_WaterFlowSpeed_var*node_4708.g)*float2(1,1));
                float4 node_5060 = tex2D(_FlowyWaterNoise,TRANSFORM_TEX(node_9021, _FlowyWaterNoise));
                float node_8123 = (_FlowyWaterWobblyness_var*node_5060.r);
                float node_5212 = sin(((_WaterRingSpeed_var*node_70.g)+(_FlowyWaterRingThickness_var*DepthBlendFloat)+node_8123));
                float _FlowyWaterDepthInfluence_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterDepthInfluence );
                float node_9470 = lerp(node_5212,DepthBlendFloat,_FlowyWaterDepthInfluence_var);
                float4 _DeepColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DeepColor );
                float4 _ShallowColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShallowColor );
                float3 diffuseColor = (Function( (node_9470+(DepthBlendFloat*0.6)) )+lerp(_DeepColor_var.rgb,_ShallowColor_var.rgb,DepthBlendFloat));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
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
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            float Function( float value ){
            if (value > .5){
            return 1;
            }
            else{
            return 0;
            }
            }
            
            uniform sampler2D _FlowyWaterNoise; uniform float4 _FlowyWaterNoise_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DepthBlendValue)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ShallowColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DeepColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterFlowSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterDepthInfluence)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterWobblyness)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterRingThickness)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterRingSpeed)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float _WaterRingSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterRingSpeed );
                float4 node_70 = _Time;
                float _FlowyWaterRingThickness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterRingThickness );
                float _DepthBlendValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthBlendValue );
                float DepthBlendFloat = (1.0 - saturate(saturate((sceneZ-partZ)/_DepthBlendValue_var)));
                float _FlowyWaterWobblyness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterWobblyness );
                float _WaterFlowSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterFlowSpeed );
                float4 node_4708 = _Time;
                float node_7890_ang = 1.0;
                float node_7890_spd = 1.0;
                float node_7890_cos = cos(node_7890_spd*node_7890_ang);
                float node_7890_sin = sin(node_7890_spd*node_7890_ang);
                float2 node_7890_piv = float2(0.5,0.5);
                float2 node_7890 = (mul(float2(i.posWorld.r,i.posWorld.b)-node_7890_piv,float2x2( node_7890_cos, -node_7890_sin, node_7890_sin, node_7890_cos))+node_7890_piv);
                float2 node_9021 = (node_7890+(_WaterFlowSpeed_var*node_4708.g)*float2(1,1));
                float4 node_5060 = tex2D(_FlowyWaterNoise,TRANSFORM_TEX(node_9021, _FlowyWaterNoise));
                float node_8123 = (_FlowyWaterWobblyness_var*node_5060.r);
                float node_5212 = sin(((_WaterRingSpeed_var*node_70.g)+(_FlowyWaterRingThickness_var*DepthBlendFloat)+node_8123));
                float _FlowyWaterDepthInfluence_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterDepthInfluence );
                float node_9470 = lerp(node_5212,DepthBlendFloat,_FlowyWaterDepthInfluence_var);
                float4 _DeepColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DeepColor );
                float4 _ShallowColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShallowColor );
                float3 diffuseColor = (Function( (node_9470+(DepthBlendFloat*0.6)) )+lerp(_DeepColor_var.rgb,_ShallowColor_var.rgb,DepthBlendFloat));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #pragma multi_compile_instancing
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
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            float Function( float value ){
            if (value > .5){
            return 1;
            }
            else{
            return 0;
            }
            }
            
            uniform sampler2D _FlowyWaterNoise; uniform float4 _FlowyWaterNoise_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DepthBlendValue)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ShallowColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DeepColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterFlowSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterDepthInfluence)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterWobblyness)
                UNITY_DEFINE_INSTANCED_PROP( float, _FlowyWaterRingThickness)
                UNITY_DEFINE_INSTANCED_PROP( float, _WaterRingSpeed)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float _WaterRingSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterRingSpeed );
                float4 node_70 = _Time;
                float _FlowyWaterRingThickness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterRingThickness );
                float _DepthBlendValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DepthBlendValue );
                float DepthBlendFloat = (1.0 - saturate(saturate((sceneZ-partZ)/_DepthBlendValue_var)));
                float _FlowyWaterWobblyness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterWobblyness );
                float _WaterFlowSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WaterFlowSpeed );
                float4 node_4708 = _Time;
                float node_7890_ang = 1.0;
                float node_7890_spd = 1.0;
                float node_7890_cos = cos(node_7890_spd*node_7890_ang);
                float node_7890_sin = sin(node_7890_spd*node_7890_ang);
                float2 node_7890_piv = float2(0.5,0.5);
                float2 node_7890 = (mul(float2(i.posWorld.r,i.posWorld.b)-node_7890_piv,float2x2( node_7890_cos, -node_7890_sin, node_7890_sin, node_7890_cos))+node_7890_piv);
                float2 node_9021 = (node_7890+(_WaterFlowSpeed_var*node_4708.g)*float2(1,1));
                float4 node_5060 = tex2D(_FlowyWaterNoise,TRANSFORM_TEX(node_9021, _FlowyWaterNoise));
                float node_8123 = (_FlowyWaterWobblyness_var*node_5060.r);
                float node_5212 = sin(((_WaterRingSpeed_var*node_70.g)+(_FlowyWaterRingThickness_var*DepthBlendFloat)+node_8123));
                float _FlowyWaterDepthInfluence_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FlowyWaterDepthInfluence );
                float node_9470 = lerp(node_5212,DepthBlendFloat,_FlowyWaterDepthInfluence_var);
                float4 _DeepColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DeepColor );
                float4 _ShallowColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShallowColor );
                float3 diffColor = (Function( (node_9470+(DepthBlendFloat*0.6)) )+lerp(_DeepColor_var.rgb,_ShallowColor_var.rgb,DepthBlendFloat));
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
