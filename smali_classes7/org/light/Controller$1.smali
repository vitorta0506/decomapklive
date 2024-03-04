.class Lorg/light/Controller$1;
.super Lorg/light/AIDLFaceDetectCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Controller;->setMaterialClipAssets(Ljava/lang/String;[Lorg/light/ClipAsset;Lorg/light/FaceDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Controller;

.field final synthetic val$callback:Lorg/light/FaceDetectCallback;


# direct methods
.method constructor <init>(Lorg/light/Controller;Lorg/light/FaceDetectCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Controller$1;->this$0:Lorg/light/Controller;

    iput-object p2, p0, Lorg/light/Controller$1;->val$callback:Lorg/light/FaceDetectCallback;

    invoke-direct {p0}, Lorg/light/AIDLFaceDetectCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([Lorg/light/LightImageFaceDetectResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Controller$1;->val$callback:Lorg/light/FaceDetectCallback;

    invoke-interface {v0, p1}, Lorg/light/FaceDetectCallback;->callback([Lorg/light/LightImageFaceDetectResult;)V

    return-void
.end method
