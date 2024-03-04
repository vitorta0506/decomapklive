.class public interface abstract Lcom/tencent/xmagic/XmagicConstant$BeautyConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/XmagicConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BeautyConstant"
.end annotation


# static fields
.field public static final BEAUTY_CLEAR:Ljava/lang/String; = "beauty.lutClearAlpha"

.field public static final BEAUTY_CONTRAST:Ljava/lang/String; = "beauty.imageContrastAlpha"

.field public static final BEAUTY_EFF_KEYS:[Ljava/lang/String;

.field public static final BEAUTY_ENLARGE_EYE:Ljava/lang/String; = "basicV7.enlargeEye"

.field public static final BEAUTY_EYE_ANGLE:Ljava/lang/String; = "basicV7.eyeAngle"

.field public static final BEAUTY_EYE_DISTANCE:Ljava/lang/String; = "basicV7.eyeDistance"

.field public static final BEAUTY_EYE_LIGHTEN:Ljava/lang/String; = "beauty.eyeLighten"

.field public static final BEAUTY_FACE_BASIC:Ljava/lang/String; = "liquefaction.basic3"

.field public static final BEAUTY_FACE_FEMALE_GOD_ID:Ljava/lang/String; = "femaleGod"

.field public static final BEAUTY_FACE_FOREHEAD:Ljava/lang/String; = "basicV7.forehead"

.field public static final BEAUTY_FACE_GODNESS:Ljava/lang/String; = "basicV7.godnessFace"

.field public static final BEAUTY_FACE_MALE_GOD:Ljava/lang/String; = "basicV7.maleGodFace"

.field public static final BEAUTY_FACE_MALE_GOD_ID:Ljava/lang/String; = "maleGod"

.field public static final BEAUTY_FACE_NATURE:Ljava/lang/String; = "basicV7.natureFace"

.field public static final BEAUTY_FACE_NATURE_ID:Ljava/lang/String; = "nature"

.field public static final BEAUTY_FACE_RED_CHEEK:Ljava/lang/String; = "beauty.faceFeatureRedCheek"

.field public static final BEAUTY_FACE_REMOVE_EYE_BAGS:Ljava/lang/String; = "beauty.removeEyeBags"

.field public static final BEAUTY_FACE_REMOVE_LAW_LINE:Ljava/lang/String; = "beauty.removeLawLine"

.field public static final BEAUTY_FACE_REMOVE_WRINKLE:Ljava/lang/String; = "beauty.removeWrinkle"

.field public static final BEAUTY_FACE_SHORT:Ljava/lang/String; = "basicV7.shortFace"

.field public static final BEAUTY_FACE_SOFTLIGHT:Ljava/lang/String; = "beauty.faceFeatureSoftlight"

.field public static final BEAUTY_FACE_THIN:Ljava/lang/String; = "basicV7.thinFace"

.field public static final BEAUTY_FACE_THIN_CHEEKBONE:Ljava/lang/String; = "basicV7.cheekboneThin"

.field public static final BEAUTY_FACE_THIN_CHIN:Ljava/lang/String; = "basicV7.chin"

.field public static final BEAUTY_FACE_V:Ljava/lang/String; = "basicV7.vFace"

.field public static final BEAUTY_LIPS_LIPS_MASK:Ljava/lang/String; = "beauty.lips.lipsMask"

.field public static final BEAUTY_MAKEUP_MULTIPLY_MULTIPLY_MASK:Ljava/lang/String; = "beauty.makeupMultiply.multiplyMask"

.field public static final BEAUTY_MOUTH_HEIGHT:Ljava/lang/String; = "basicV7.mouthHeight"

.field public static final BEAUTY_MOUTH_LIPSTICK:Ljava/lang/String; = "beauty.faceFeatureLipsLut"

.field public static final BEAUTY_MOUTH_SIZE:Ljava/lang/String; = "basicV7.mouthSize"

.field public static final BEAUTY_NOSE_HEIGHT:Ljava/lang/String; = "basicV7.noseHeight"

.field public static final BEAUTY_NOSE_THIN:Ljava/lang/String; = "basicV7.thinNose"

.field public static final BEAUTY_NOSE_WING:Ljava/lang/String; = "basicV7.noseWing"

.field public static final BEAUTY_ROSY:Ljava/lang/String; = "smooth.rosy"

.field public static final BEAUTY_SATURATION:Ljava/lang/String; = "smooth.saturation"

.field public static final BEAUTY_SMOOTH:Ljava/lang/String; = "smooth.smooth"

.field public static final BEAUTY_SOFTLIGHT_SOFTLIGHT_MASK:Ljava/lang/String; = "beauty.softLight.softLightMask"

.field public static final BEAUTY_TOOTH_WHITEN:Ljava/lang/String; = "beauty.toothWhiten"

.field public static final BEAUTY_WHITEN:Ljava/lang/String; = "beauty.lutFoundationAlpha"

.field public static final BODY_AUTOTHIN_BODY_STRENGTH:Ljava/lang/String; = "body.autothinBodyStrength"

.field public static final BODY_LEG_STRETCH:Ljava/lang/String; = "body.legStretch"

.field public static final BODY_SLIM_HEAD_STRENGTH:Ljava/lang/String; = "body.slimHeadStrength"

.field public static final BODY_SLIM_LEG_STRENGTH:Ljava/lang/String; = "body.slimLegStrength"

.field public static final BODY_THIN_SHOULDER_STRENGTH:Ljava/lang/String; = "body.thinShoulderStrength"

.field public static final BODY_WAIST_STRENGTH:Ljava/lang/String; = "body.waistStrength"


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const-string/jumbo v0, "smooth.smooth"

    const-string v1, "beauty.lutFoundationAlpha"

    const-string/jumbo v2, "smooth.rosy"

    const-string v3, "beauty.imageContrastAlpha"

    const-string/jumbo v4, "smooth.saturation"

    const-string v5, "beauty.lutClearAlpha"

    const-string v6, "basicV7.enlargeEye"

    const-string v7, "basicV7.vFace"

    const-string v8, "basicV7.thinFace"

    const-string v9, "basicV7.cheekboneThin"

    const-string v10, "basicV7.chin"

    const-string v11, "basicV7.shortFace"

    const-string v12, "liquefaction.basic3"

    const-string v13, "basicV7.forehead"

    const-string v14, "beauty.eyeLighten"

    const-string v15, "basicV7.eyeDistance"

    const-string v16, "basicV7.eyeAngle"

    const-string v17, "basicV7.thinNose"

    const-string v18, "basicV7.noseWing"

    const-string v19, "basicV7.noseHeight"

    const-string v20, "beauty.toothWhiten"

    const-string v21, "beauty.removeWrinkle"

    const-string v22, "beauty.removeLawLine"

    const-string v23, "beauty.removeEyeBags"

    const-string v24, "basicV7.mouthSize"

    const-string v25, "basicV7.mouthHeight"

    const-string v26, "basicV7.natureFace"

    const-string v27, "basicV7.godnessFace"

    const-string v28, "basicV7.maleGodFace"

    const-string v29, "body.legStretch"

    const-string v30, "body.thinShoulderStrength"

    const-string v31, "body.waistStrength"

    const-string v32, "body.autothinBodyStrength"

    const-string v33, "body.slimLegStrength"

    const-string v34, "body.slimHeadStrength"

    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/xmagic/XmagicConstant$BeautyConstant;->BEAUTY_EFF_KEYS:[Ljava/lang/String;

    return-void
.end method
