.class Lorg/libpag/GPUDecoder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libpag/GPUDecoder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/libpag/GPUDecoder$3;


# direct methods
.method constructor <init>(Lorg/libpag/GPUDecoder$3;)V
    .locals 0

    iput-object p1, p0, Lorg/libpag/GPUDecoder$3$1;->this$1:Lorg/libpag/GPUDecoder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/libpag/GPUDecoder$3$1;->this$1:Lorg/libpag/GPUDecoder$3;

    iget-object v0, v0, Lorg/libpag/GPUDecoder$3;->val$releaseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
