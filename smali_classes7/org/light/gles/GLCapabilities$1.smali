.class final Lorg/light/gles/GLCapabilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/gles/GLCapabilities;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enableFramebufferFetch:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/light/gles/GLCapabilities$1;->val$enableFramebufferFetch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/light/gles/GLCapabilities$1;->val$enableFramebufferFetch:Z

    invoke-static {v0}, Lorg/light/gles/GLCapabilities;->access$000(Z)V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lorg/light/gles/GLCapabilities;->access$102(Z)Z

    const-string v0, "GLCapabilities"

    const-string v1, "init: async end"

    .line 3
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
