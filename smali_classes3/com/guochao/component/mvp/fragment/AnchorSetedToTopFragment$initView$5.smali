.class public final Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5",
        "Li1/i;",
        "",
        "hour",
        "",
        "formatHour",
        "minute",
        "formatMinute",
        "second",
        "formatSecond",
        "component_mvp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatHour(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getZeroTime(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMinute(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$initView$5;->this$0:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->getMinuteStr(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSecond(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, ""

    return-object p1
.end method
