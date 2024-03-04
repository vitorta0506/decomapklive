.class Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iput-boolean p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;->b:Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    iget-boolean v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;->a:Z

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->o0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;ZLjava/io/File;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;->a(Ljava/io/File;)V

    return-void
.end method
