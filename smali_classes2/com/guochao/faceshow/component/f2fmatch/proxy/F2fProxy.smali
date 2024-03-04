.class public interface abstract Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/FilterSexDialogFinder;
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchingTipsFinder;
.implements Lcom/guochao/faceshow/component/f2fmatch/proxy/PendantDialogFinder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J*\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u0008\u0010\u0015\u001a\u00020\tH&J\u0008\u0010\u0016\u001a\u00020\tH&J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0007H&J\u0018\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0008\u0010 \u001a\u00020\tH&J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0018\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH&\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/FilterSexDialogFinder;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchingTipsFinder;",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/PendantDialogFinder;",
        "diamondsEnoughToFilterGender",
        "",
        "activity",
        "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;",
        "f2fMoveToMini",
        "",
        "obtainChatFragment",
        "Landroidx/fragment/app/Fragment;",
        "gcUser",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "onActivityResult",
        "f2fMatchActivity",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onEnterF2f",
        "releaseMini",
        "report",
        "f2fMatchRoomInfo",
        "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;",
        "setUserInfo",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "setVideoChatUserInfo",
        "f2fMatchContainer",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;",
        "shouldCostFilterDiamonds",
        "showForbiddenLiveDialogIfNeed",
        "showRetryAlertDialog",
        "context",
        "Landroid/content/Context;",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract diamondsEnoughToFilterGender(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)Z
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract f2fMoveToMini()V
.end method

.method public abstract obtainChatFragment(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)Landroidx/fragment/app/Fragment;
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onActivityResult(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;IILandroid/content/Intent;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onEnterF2f()V
.end method

.method public abstract releaseMini()V
.end method

.method public abstract report(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setUserInfo(Lcom/guochao/faceshow/aaspring/base/model/GCUser;Landroid/view/ViewGroup;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setVideoChatUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Landroid/view/ViewGroup;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract shouldCostFilterDiamonds()V
.end method

.method public abstract showForbiddenLiveDialogIfNeed(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract showRetryAlertDialog(Landroid/content/Context;Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
