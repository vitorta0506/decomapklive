.class Lorg/light/Controller$2;
.super Lorg/light/callback/AIDLComponentUpdateCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Controller;->setComponentUpdateCallback(Lorg/light/callback/ComponentUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Controller;

.field final synthetic val$callback:Lorg/light/callback/ComponentUpdateCallback;


# direct methods
.method constructor <init>(Lorg/light/Controller;Lorg/light/callback/ComponentUpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Controller$2;->this$0:Lorg/light/Controller;

    iput-object p2, p0, Lorg/light/Controller$2;->val$callback:Lorg/light/callback/ComponentUpdateCallback;

    invoke-direct {p0}, Lorg/light/callback/AIDLComponentUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentUpdate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Controller$2;->val$callback:Lorg/light/callback/ComponentUpdateCallback;

    invoke-interface {v0, p1}, Lorg/light/callback/ComponentUpdateCallback;->onComponentUpdated(Ljava/lang/String;)V

    return-void
.end method
