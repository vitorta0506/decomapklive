.class public final Lcom/tencent/liteav/videobase/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/i;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/videobase/utils/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 2
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p0, 0x8b81

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p0, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p0, v0, v1

    if-nez p0, :cond_0

    const-string p0, "glCompileShader"

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->checkGlError(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_0
    return p1
.end method
