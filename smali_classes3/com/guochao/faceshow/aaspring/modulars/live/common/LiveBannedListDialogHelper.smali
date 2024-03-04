.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveBannedListDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/liveroom/service/LiveBannedListProxy;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/live_banned_list"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    const v0, 0x7f1304b9

    invoke-direct {p3, p1, v0, p2, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveBannedListDialogHelper$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveBannedListDialogHelper$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveBannedListDialogHelper;)V

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->setonMuteListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$j;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    return-void
.end method
