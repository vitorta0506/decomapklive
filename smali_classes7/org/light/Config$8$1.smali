.class Lorg/light/Config$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$8;->OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$8;

.field final synthetic val$request:Lorg/light/bean/LightDelegateAgentRequest;


# direct methods
.method constructor <init>(Lorg/light/Config$8;Lorg/light/bean/LightDelegateAgentRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$8$1;->this$1:Lorg/light/Config$8;

    iput-object p2, p0, Lorg/light/Config$8$1;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/Config$8$1;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    invoke-virtual {v0}, Lorg/light/bean/LightDelegateAgentRequest;->getDataFromSharedMemory()V

    .line 2
    iget-object v0, p0, Lorg/light/Config$8$1;->this$1:Lorg/light/Config$8;

    iget-object v0, v0, Lorg/light/Config$8;->val$delegateAgentRequestListener:Lorg/light/listener/OnDelegateAgentRequestListener;

    iget-object v1, p0, Lorg/light/Config$8$1;->val$request:Lorg/light/bean/LightDelegateAgentRequest;

    invoke-interface {v0, v1}, Lorg/light/listener/OnDelegateAgentRequestListener;->OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V

    return-void
.end method
