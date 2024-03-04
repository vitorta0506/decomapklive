.class Lorg/light/Controller$3;
.super Lorg/light/callback/AIDLWillReadSampleCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Controller;->setWillReadSampleCallback(Lorg/light/callback/WillReadSampleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Controller;

.field final synthetic val$callback:Lorg/light/callback/WillReadSampleCallback;


# direct methods
.method constructor <init>(Lorg/light/Controller;Lorg/light/callback/WillReadSampleCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Controller$3;->this$0:Lorg/light/Controller;

    iput-object p2, p0, Lorg/light/Controller$3;->val$callback:Lorg/light/callback/WillReadSampleCallback;

    invoke-direct {p0}, Lorg/light/callback/AIDLWillReadSampleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeReadSample()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Controller$3;->val$callback:Lorg/light/callback/WillReadSampleCallback;

    invoke-interface {v0}, Lorg/light/callback/WillReadSampleCallback;->beforeReadSample()V

    return-void
.end method
