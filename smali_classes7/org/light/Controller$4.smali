.class Lorg/light/Controller$4;
.super Lorg/light/AIDLIExternalAudioProcessor$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Controller;->setExternalAudioProcessor(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Controller;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/light/Controller;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Controller$4;->this$0:Lorg/light/Controller;

    iput-object p2, p0, Lorg/light/Controller$4;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/light/AIDLIExternalAudioProcessor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Controller$4;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/IExternalAudioProcessor;

    invoke-interface {v0, p1, p2}, Lorg/light/IExternalAudioProcessor;->process(Ljava/lang/String;Lorg/light/AudioFrame;)Lorg/light/AudioFrame;

    move-result-object p1

    return-object p1
.end method
