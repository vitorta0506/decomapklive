.class public Lorg/light/gles/GLCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLIAMENT_TEST_FRAG_SHADER:Ljava/lang/String; = "#version 300 es\nprecision highp float;\nlayout(location = 0) out vec4 fragColor;\n\n void main(void) {\n     const vec3 _347[2] = vec3[](vec3(1, 1, 1), vec3(1, 1, 1));\n\n     float _1025 = 0.0;\n     for (uint _1149 = 0u; _1149 < 2u; _1149++){\n         _1025 += _347[_1149].z;\n     }\n     fragColor = vec4(_1025 / 2.0);\n }"

.field private static final GPU_GL_ONE_THREAD:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GLCapabilities"

.field private static es_GL_EXT_shader_framebuffer_fetch:Z

.field private static es_GL_OES_texture_float:Z

.field private static es_GL_OES_texture_float_linear:Z

.field private static filamentShaderCompileSucceed:Z

.field private static glThread:Lorg/light/gles/SimpleGLThread;

.field private static glesVersion:Ljava/lang/String;

.field private static gpuInfo:Ljava/lang/String;

.field private static volatile mIsInit:Z

.field private static maxCombinedTextureImageUnits:[I

.field private static maxFragmentUniformComponents:[I

.field private static maxFragmentUniformVectors:[I

.field private static maxVertexTextureImageUnits:[I

.field private static maxVertexUniformComponents:[I

.field private static maxVertexUniformVectors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "PowerVR SGX 544MP"

    const-string v1, "Adreno (TM) 306"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/gles/GLCapabilities;->GPU_GL_ONE_THREAD:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_EXT_shader_framebuffer_fetch:Z

    .line 3
    sput-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float:Z

    .line 4
    sput-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float_linear:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 5
    sput-object v2, Lorg/light/gles/GLCapabilities;->maxVertexTextureImageUnits:[I

    new-array v2, v1, [I

    .line 6
    sput-object v2, Lorg/light/gles/GLCapabilities;->maxCombinedTextureImageUnits:[I

    new-array v2, v1, [I

    .line 7
    sput-object v2, Lorg/light/gles/GLCapabilities;->maxVertexUniformVectors:[I

    new-array v2, v1, [I

    .line 8
    sput-object v2, Lorg/light/gles/GLCapabilities;->maxFragmentUniformVectors:[I

    new-array v2, v1, [I

    .line 9
    sput-object v2, Lorg/light/gles/GLCapabilities;->maxVertexUniformComponents:[I

    new-array v1, v1, [I

    .line 10
    sput-object v1, Lorg/light/gles/GLCapabilities;->maxFragmentUniformComponents:[I

    .line 11
    sput-boolean v0, Lorg/light/gles/GLCapabilities;->mIsInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lorg/light/gles/GLCapabilities;->initImpl(Z)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lorg/light/gles/GLCapabilities;->mIsInit:Z

    return p0
.end method

.method public static getGPUInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->waitInitFinish()V

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->gpuInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getGlesVersion()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->waitInitFinish()V

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->glesVersion:Ljava/lang/String;

    const-string v1, "2.0"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0xa

    const/16 v3, 0xd

    .line 3
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private static getModels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    .line 1
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/device/GpuScopeAttrs;->getGPuModel()Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/device/GpuScopeAttrs;->getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/light/device/GpuScopeAttrs;->getSysVersionModel()Lorg/light/device/GpuScopeAttrs$GpuBean$SysVersionModel;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Z)V
    .locals 4

    const-class v0, Lorg/light/gles/GLCapabilities;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLCapabilities"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: enableFramebufferFetch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v1, Lorg/light/gles/GLCapabilities;->mIsInit:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/light/gles/GLCapabilities;->glThread:Lorg/light/gles/SimpleGLThread;

    if-nez v1, :cond_0

    const-string v1, "GLCapabilities"

    const-string v2, "init: async start"

    .line 3
    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lorg/light/gles/SimpleGLThread;

    const/4 v2, 0x0

    const-string v3, "GLCapabilities-Init"

    invoke-direct {v1, v2, v3}, Lorg/light/gles/SimpleGLThread;-><init>(Landroid/opengl/EGLContext;Ljava/lang/String;)V

    sput-object v1, Lorg/light/gles/GLCapabilities;->glThread:Lorg/light/gles/SimpleGLThread;

    .line 5
    new-instance v2, Lorg/light/gles/GLCapabilities$1;

    invoke-direct {v2, p0}, Lorg/light/gles/GLCapabilities$1;-><init>(Z)V

    invoke-virtual {v1, v2}, Lorg/light/gles/SimpleGLThread;->postJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initExtensionValues(Z)V
    .locals 5
    .annotation runtime Lorg/light/utils/MustRunOnGLThread;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sput-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_EXT_shader_framebuffer_fetch:Z

    return-void

    :cond_0
    const/16 p0, 0x1f03

    .line 2
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\\s"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p0, v0

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "GL_EXT_shader_framebuffer_fetch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sput-boolean v4, Lorg/light/gles/GLCapabilities;->es_GL_EXT_shader_framebuffer_fetch:Z

    .line 8
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GL_OES_texture_float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sput-boolean v4, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float:Z

    .line 10
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "GL_OES_texture_float_linear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sput-boolean v4, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float_linear:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initGLExtensionRelatedShaders()V

    return-void
.end method

.method private static initFilamentValues()V
    .locals 2
    .annotation runtime Lorg/light/utils/MustRunOnGLThread;
    .end annotation

    const v0, 0x8b30

    :try_start_0
    const-string v1, "#version 300 es\nprecision highp float;\nlayout(location = 0) out vec4 fragColor;\n\n void main(void) {\n     const vec3 _347[2] = vec3[](vec3(1, 1, 1), vec3(1, 1, 1));\n\n     float _1025 = 0.0;\n     for (uint _1149 = 0u; _1149 < 2u; _1149++){\n         _1025 += _347[_1149].z;\n     }\n     fragColor = vec4(_1025 / 2.0);\n }"

    .line 1
    invoke-static {v0, v1}, Lorg/light/gles/GLCapabilities;->testCompileShader(ILjava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/light/gles/GLCapabilities;->filamentShaderCompileSucceed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLCapabilities"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static initGLExtensionRelatedShaders()V
    .locals 0

    return-void
.end method

.method private static initGpuInfo()V
    .locals 3

    const/16 v0, 0x1f01

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f00

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f02

    .line 3
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/light/gles/GLCapabilities;->glesVersion:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/light/gles/GLCapabilities;->glesVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/gles/GLCapabilities;->gpuInfo:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/light/gles/GLCapabilities;->gpuInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLCapabilities"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initImpl(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initGpuInfo()V

    .line 2
    invoke-static {p0}, Lorg/light/gles/GLCapabilities;->initExtensionValues(Z)V

    .line 3
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initReshapeValues()V

    .line 4
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initUniformValues()V

    .line 5
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initFilamentValues()V

    return-void
.end method

.method private static initReshapeValues()V
    .locals 3
    .annotation runtime Lorg/light/utils/MustRunOnGLThread;
    .end annotation

    .line 1
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxVertexTextureImageUnits:[I

    const v1, 0x8b4c

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxCombinedTextureImageUnits:[I

    const v1, 0x8b4d

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    sget-object v1, Lorg/light/gles/GLCapabilities;->maxVertexTextureImageUnits:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lorg/light/gles/GLCapabilities;->maxCombinedTextureImageUnits:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[vtf] vtf = %d, all = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLCapabilities"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initUniformValues()V
    .locals 5
    .annotation runtime Lorg/light/utils/MustRunOnGLThread;
    .end annotation

    .line 1
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxVertexUniformVectors:[I

    const v1, 0x8dfb

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxFragmentUniformVectors:[I

    const v1, 0x8dfd

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 3
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxVertexUniformComponents:[I

    const v1, 0x8b4a

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 4
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxFragmentUniformComponents:[I

    const v1, 0x8b49

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    sget-object v3, Lorg/light/gles/GLCapabilities;->maxVertexUniformVectors:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v3, Lorg/light/gles/GLCapabilities;->maxFragmentUniformVectors:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "[uniform] GL_MAX_VERTEX_UNIFORM_VECTORS = %d, GL_MAX_FRAGMENT_UNIFORM_VECTORS = %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GLCapabilities"

    invoke-static {v3, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    sget-object v1, Lorg/light/gles/GLCapabilities;->maxVertexUniformComponents:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lorg/light/gles/GLCapabilities;->maxFragmentUniformComponents:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "[uniform] GL_MAX_VERTEX_UNIFORM_COMPONENTS = %d, GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isDeviceSupportAce3dFlush()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->ace3dFlushSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDeviceSupportAceEngine()Z
    .locals 5

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v3, :cond_0

    .line 2
    iget-boolean v4, v3, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->filamentSupport:Z

    if-nez v4, :cond_2

    .line 3
    iget-object v3, v3, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->filamentWhiteList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4
    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_1
    and-int/2addr v2, v4

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isDeviceSupportAiAbility()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->aiSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDeviceSupportFence()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->fenceSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDeviceSupportFilamentFeature(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/GpuScopeAttrs;->getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->renderBlackList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isDeviceSupportGLExtension(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/GpuScopeAttrs;->getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->GLExtensionBlackList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isDeviceSupportHairSegPreLoad()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->hairSegPreLoadSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDeviceSupportKapu()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->kapuSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDeviceSupportOpenCL()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->openclSupport:Z

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isFilamentShaderCompileSucceed()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->waitInitFinish()V

    .line 2
    sget-boolean v0, Lorg/light/gles/GLCapabilities;->filamentShaderCompileSucceed:Z

    return v0
.end method

.method public static isImuSmoothEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/GpuScopeAttrs;->getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;->enableImuSmooth:Z

    return v0
.end method

.method public static isInOneGLThreadBlackList()Z
    .locals 6

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lorg/light/gles/GLCapabilities;->GPU_GL_ONE_THREAD:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isShareGLContextError()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;

    if-eqz v2, :cond_0

    .line 2
    iget-boolean v2, v2, Lorg/light/device/GpuScopeAttrs$GpuBean$BaseModel;->shareGLContextError:Z

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isSupportFloatTexture()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->waitInitFinish()V

    .line 2
    sget-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_OES_texture_float_linear:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportFramebufferFetch()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->waitInitFinish()V

    .line 2
    sget-boolean v0, Lorg/light/gles/GLCapabilities;->es_GL_EXT_shader_framebuffer_fetch:Z

    return v0
.end method

.method public static supportVTF()Z
    .locals 2
    .annotation runtime Lorg/light/utils/MustRunOnGLThread;
    .end annotation

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->initReshapeValues()V

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->maxVertexTextureImageUnits:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static testCompileShader(ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v2, 0x8b81

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertex shader test compile failed, shader : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GLCapabilities"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3

    .line 10
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0
.end method

.method private static useInWrongTime()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call init method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static waitInitFinish()V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/light/gles/GLCapabilities;->mIsInit:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lorg/light/gles/GLCapabilities;->glThread:Lorg/light/gles/SimpleGLThread;

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1}, Lorg/light/gles/SimpleGLThread;->waitDone(I)V

    .line 4
    sget-boolean v0, Lorg/light/gles/GLCapabilities;->mIsInit:Z

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lorg/light/gles/GLCapabilities;->useInWrongTime()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/light/gles/GLCapabilities;->useInWrongTime()V

    :cond_1
    :goto_0
    return-void
.end method
