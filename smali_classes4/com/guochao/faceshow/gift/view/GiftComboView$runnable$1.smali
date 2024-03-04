.class public final Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/GiftComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/gift/view/GiftComboView$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getHandler$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->isTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$putMap(Lcom/guochao/faceshow/gift/view/GiftComboView;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getCont(Lcom/guochao/faceshow/gift/view/GiftComboView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$setNum(Lcom/guochao/faceshow/gift/view/GiftComboView;I)V

    :cond_0
    return-void
.end method
