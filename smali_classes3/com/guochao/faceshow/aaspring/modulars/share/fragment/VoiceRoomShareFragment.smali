.class public final Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/share/service/ShareProxy;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/voice_room_share"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;,
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;,
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0005:;<=>B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010(\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)2\u0006\u0010+\u001a\u00020\u000bH\u0002J\u0012\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00100\u001a\u00020-H\u0014J\u0010\u00101\u001a\u00020-2\u0008\u00102\u001a\u0004\u0018\u000103J\u0008\u00104\u001a\u00020-H\u0002J\u0008\u00105\u001a\u00020-H\u0002J:\u00106\u001a\u00020-2\u0006\u0010.\u001a\u0002072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\"8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008#\u0010\u0003\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006?"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "Lcom/guochao/lib_service_center/share/service/ShareProxy;",
        "()V",
        "actionFinish",
        "Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;",
        "getActionFinish",
        "()Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;",
        "setActionFinish",
        "(Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V",
        "isOwner",
        "",
        "()Z",
        "setOwner",
        "(Z)V",
        "mPeopleAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;",
        "getMPeopleAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;",
        "setMPeopleAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;)V",
        "mShareAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;",
        "getMShareAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;",
        "setMShareAdapter",
        "(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;)V",
        "roomId",
        "",
        "getRoomId",
        "()Ljava/lang/String;",
        "setRoomId",
        "(Ljava/lang/String;)V",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;)V",
        "getTopicDefault",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
        "showShareToFriend",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "initListener",
        "invitePerson",
        "person",
        "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
        "shareLiveToFriend",
        "shareLiveToRecent",
        "start",
        "Landroidx/fragment/app/FragmentActivity;",
        "coverImg",
        "shareUrl",
        "Companion",
        "PeopleAdapter",
        "PeopleViewHolder",
        "ShareAdapter",
        "ShareViewHolder",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private actionFinish:Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isOwner:Z

.field private mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private roomId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->shareLiveToFriend$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->shareLiveToRecent$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->initListener$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->initListener$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final getTopicDefault(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;->NAME:Ljava/lang/String;

    const v2, 0x7f0f02ab

    const v3, 0x7f120450

    .line 4
    invoke-direct {p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;II)V

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initListener$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;->NAME:Ljava/lang/String;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->shareLiveToFriend()V

    :cond_0
    return-void
.end method

.method private static final initListener$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->shareLiveToRecent()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->invitePerson(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)V

    :goto_0
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;->newInstance(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;

    move-result-object p0

    return-object p0
.end method

.method private final shareLiveToFriend()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->isOwner:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 3
    :goto_1
    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->V1(Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final shareLiveToFriend$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    return-void
.end method

.method private final shareLiveToRecent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->isOwner:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    .line 3
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->V1(Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final shareLiveToRecent$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getActionFinish()Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->actionFinish:Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;

    return-object v0
.end method

.method public final getMPeopleAdapter()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    return-object v0
.end method

.method public final getMShareAdapter()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    return-object v0
.end method

.method public final getRoomId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected initListener()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->initListener()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->getTopicDefault(Z)Ljava/util/List;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.guochao.faceshow.aaspring.beans.SharePlatformBean>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;->shareRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->f0()Ljava/util/List;

    move-result-object v0

    const-string v1, "getInstance().cachedConversationList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->shouldShowInConversationList()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    const-string v2, "-1"

    .line 14
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    goto :goto_4

    .line 21
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;->recentTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public final invitePerson(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->Y1(Ljava/util/List;)V

    const-string p1, "api/token/live/voice/invite/add"

    .line 6
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestKt;->requestOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    const-string v2, "roomId"

    .line 8
    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    const-string v0, "userIds"

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$invitePerson$$inlined$success$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$invitePerson$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public final isOwner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->isOwner:Z

    return v0
.end method

.method public final setActionFinish(Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V
    .locals 0
    .param p1    # Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->actionFinish:Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;

    return-void
.end method

.method public final setMPeopleAdapter(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mPeopleAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;

    return-void
.end method

.method public final setMShareAdapter(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->mShareAdapter:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;

    return-void
.end method

.method public final setOwner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->isOwner:Z

    return-void
.end method

.method public final setRoomId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;

    return-void
.end method

.method public start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roomId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverImg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "shareUrl"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 1
    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->actionFinish:Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;

    .line 2
    :cond_0
    iput-boolean p5, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->isOwner:Z

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;->roomId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "context.supportFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "share"

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
