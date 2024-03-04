.class Lorg/light/Config$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/light/Config$2$2;


# direct methods
.method constructor <init>(Lorg/light/Config$2$2;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$2$2$1;->this$2:Lorg/light/Config$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lorg/light/Config$2$2$1;->this$2:Lorg/light/Config$2$2;

    iget-object v0, v0, Lorg/light/Config$2$2;->this$1:Lorg/light/Config$2;

    invoke-static {v0}, Lorg/light/Config$2;->access$2400(Lorg/light/Config$2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/light/Config$2$2$1$1;

    invoke-direct {v1, p0, p1}, Lorg/light/Config$2$2$1$1;-><init>(Lorg/light/Config$2$2$1;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
