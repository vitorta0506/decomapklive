package org.light;
/* loaded from: classes7.dex */
public class Constants {
    public static final String DEVICE_ABILITY_3DMM = "ai.3dmm";
    @Deprecated
    public static final String DEVICE_ABILITY_3D_KAPU = "3d.kapu";
    public static final String DEVICE_ABILITY_ACE3D_FLUSH = "ace3d.flush";
    public static final String DEVICE_ABILITY_AI = "ai";
    public static final String DEVICE_ABILITY_AI_BODY = "ai.body";
    public static final String DEVICE_ABILITY_AI_CAT = "ai.catFace";
    public static final String DEVICE_ABILITY_AI_EMOTION = "ai.emotion";
    public static final String DEVICE_ABILITY_AI_EXPRESSION = "ai.expression";
    public static final String DEVICE_ABILITY_AI_FACE3D = "ai.face3d";
    public static final String DEVICE_ABILITY_AI_GAN = "ai.gan";
    public static final String DEVICE_ABILITY_AI_GENDER = "ai.gender";
    public static final String DEVICE_ABILITY_AI_HAND = "ai.hand";
    public static final String DEVICE_ABILITY_AI_SEGMENTATION_BG = "ai.segment";
    public static final String DEVICE_ABILITY_AI_SEGMENTATION_BG_GPU = "ai.segment.gpu";
    public static final String DEVICE_ABILITY_AI_SEGMENTATION_HAIR = "ai.segmentHair";
    public static final String DEVICE_ABILITY_AVATAR2D = "avatar2d";
    public static final String DEVICE_ABILITY_FILAMENT_BLOOM = "render.bloom";
    public static final String DEVICE_ABILITY_FILAMENT_COLOR_GRADING = "render.color_grading";
    public static final String DEVICE_ABILITY_FILAMENT_DITHER = "render.dither";
    public static final String DEVICE_ABILITY_FILAMENT_FXAA = "render.fxaa";
    public static final String DEVICE_ABILITY_FILAMENT_MSAA = "render.msaa";
    public static final String DEVICE_ABILITY_FILAMENT_SHADOW = "render.shadow";
    public static final String DEVICE_ABILITY_FILAMENT_SSAO = "render.ssao";
    public static final String DEVICE_ABILITY_FILAMENT_VIGNETTE = "render.vignette";
    public static final String DEVICE_ABILITY_IMU_SMOOTH_ENABLE = "imu.smooth.enable";
    public static final String DEVICE_ABILITY_JAVASCRIPT = "JavaScript";
    public static final String DEVICE_ABILITY_OPENCL = "OpenCL";
    public static final String DEVICE_ABILITY_OPENGL = "OpenGL";
    public static final String DEVICE_ABILITY_PRELOAD_HAIR_SEG = "ai.InitSegmentHair";
    public static final String DEVICE_IS_STICKER_3D = "material.sticker3d";
    public static final String DEVICE_SHARE_GLCONTEXT_ERROR = "shareGLContextError";
    public static final int TYPE_DEVICE_FALLBACK_SETTING_DEFAULT = 0;
    public static final int TYPE_DEVICE_FALLBACK_SETTING_FORCE_CLOSE = 2;
    public static final int TYPE_DEVICE_FALLBACK_SETTING_FORCE_OPEN = 1;

    /* loaded from: classes7.dex */
    public static class AGENT_TYPE {
        public static final String k3D_MM_AGENT = "k3D_MM_AGENT";
        public static final String kAGE_AGENT = "AGE_AGENT";
        public static final String kAR_AGENT = "AR_AGENT";
        public static final String kBG_SEG_AGENT = "BG_SEG_AGENT";
        public static final String kBODY_AGENT = "GY_BODY_AGENT";
        public static final String kBRIGHTNESS_AGENT = "BRIGHTNESS_AGENT";
        public static final String kCAT_AGENT = "CAT_AGENT";
        public static final String kCUSTOM_SEG_AGENT = "CUSTOM_SEG_AGENT";
        public static final String kDEPTH_AGENT = "DEPTH_AGENT";
        public static final String kFACE_AGENT = "FACE_AGENT";
        public static final String kGENDER_AGENT = "GENDER_AGENT";
        public static final String kHAIR_SEG_AGENT = "HAIR_SEG_AGENT";
        public static final String kHAND_AGENT = "HAND_AGENT";
        public static final String kSKY_SEG_AGENT = "SKY_SEG_AGENT";
        public static final String kSMILE_AGENT = "SMILE_AGENT";
    }

    /* loaded from: classes7.dex */
    public static final class LIGHT_ASSET {
        public static final String ASSET_AR = "material.ar";
        public static final String ASSET_GET_DEPTH_TYPE = "material.depthType";
        public static final String ASSET_HAS_AUDIO = "audio.hasAudio";
        public static final String ASSET_IS_3D = "ai.face3d";
        public static final String ASSET_IS_FACE_MARKING = "todo";
        public static final String ASSET_IS_PAG = "material.pag";
        public static final String ASSET_IS_PARTICLE = "material.particle";
        public static final String ASSET_IS_POUT = "material.pout";
        public static final String ASSET_MESH = "material.mesh";
        public static final String ASSET_NEED_BEAUTY_BODY = "material.beautyBody";
        public static final String ASSET_NEED_BODY = "ai.body";
        public static final String ASSET_NEED_CAT_DETECT = "ai.catFace";
        public static final String ASSET_NEED_EXPRESSION_DETECT = "ai.expression";
        public static final String ASSET_NEED_FACE = "ai.face";
        public static final String ASSET_NEED_GAN = "ai.gan";
        public static final String ASSET_NEED_GENDER_DETECT = "ai.gender";
        public static final String ASSET_NEED_HAIR_SEGMENT = "ai.segmentHair";
        public static final String ASSET_NEED_HAND_DETECT = "ai.hand";
        public static final String ASSET_NEED_RGB_DEPT = "ai.rgbDepth";
        public static final String ASSET_NEED_SEGMENT = "ai.segment";
        public static final String ASSET_NEED_SKY_SEGMENT = "ai.segmentSky";
        public static final String ASSET_SUPPORT_TOUCH = "material.touch";
        public static final String DEFAULT_EMPTY_ASSET_PATH = "";
    }

    /* loaded from: classes7.dex */
    public static class LIGHT_DEFAULT_BEAUTY_VERSION {
        public static final String defaultBeautyV5 = "defaultBeautyV5.json";
        public static final String defaultBeautyV6 = "defaultBeautyV6.json";
    }

    /* loaded from: classes7.dex */
    public static class STYLIZED_TYPE {
        public static final String CartoonEffect = "CartoonStyleFilter";
        public static final String ComicEffect = "OldComicFilter";
        public static final String GanCartoonEffect = "GanCartoonFilter";
        public static final String MoonaPencilEffecct = "MoonaPencilFilter";
        public static final String PencilEffect = "PencilFilter";
        public static final String PengkeEffect = "CyberpunkStyleFilter";
        public static final String SumiaoEffect = "SelfInnovSketchFilter";
        public static final String WeishiSumiaoEffect = "WeseeSketchFilter";
    }
}
