.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;
.implements Lu8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$MyAdapter;,
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;,
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 h2\u00020\u00012\u00020\u00022\u00020\u0003:\u0004hijkB\u0007\u00a2\u0006\u0004\u0008f\u0010gJ\"\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\nH\u0014J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0012\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0014H\u0007J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0016JF\u0010\'\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u0016R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u0010/\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u00105\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00085\u00100\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104R\"\u00108\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\"\u0010E\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008E\u00100\u001a\u0004\u0008F\u00102\"\u0004\u0008G\u00104R\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00170 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR$\u0010K\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR$\u0010R\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR$\u0010Y\u001a\u0004\u0018\u00010X8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010`\u001a\u0004\u0018\u00010_8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010e\u00a8\u0006l"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;",
        "Lu8/b;",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "itemBean",
        "",
        "count",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        "categoryItem",
        "",
        "sendGiftResponse",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "loadData",
        "getLayoutId",
        "Landroid/view/View;",
        "v",
        "initView",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;",
        "message",
        "addMessage",
        "view",
        "input",
        "gift",
        "height",
        "orientation",
        "onKeyboardHeightChanged",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
        "users",
        "",
        "isToken",
        "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
        "sendGiftCallBack",
        "onSelectGift",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "chatContentView",
        "Landroid/view/View;",
        "getChatContentView",
        "()Landroid/view/View;",
        "setChatContentView",
        "(Landroid/view/View;)V",
        "beautyIcon",
        "getBeautyIcon",
        "setBeautyIcon",
        "layoutHeight",
        "I",
        "getLayoutHeight",
        "()I",
        "setLayoutHeight",
        "(I)V",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "svgaImageView",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "getSvgaImageView",
        "()Lcom/opensource/svgaplayer/SVGAImageView;",
        "setSvgaImageView",
        "(Lcom/opensource/svgaplayer/SVGAImageView;)V",
        "bottomLayout",
        "getBottomLayout",
        "setBottomLayout",
        "messageList",
        "Ljava/util/List;",
        "",
        "userId",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;",
        "trtcUserProvider",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;",
        "getTrtcUserProvider",
        "()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;",
        "setTrtcUserProvider",
        "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "giftFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "getGiftFragment",
        "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "setGiftFragment",
        "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;",
        "onBeautyClickListener",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;",
        "getOnBeautyClickListener",
        "()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;",
        "setOnBeautyClickListener",
        "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;)V",
        "<init>",
        "()V",
        "Companion",
        "MyAdapter",
        "OnBeautyClickListener",
        "TrtcUserProvider",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public beautyIcon:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public bottomLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public chatContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutHeight:I

.field private final messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onBeautyClickListener:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->messageList:Ljava/util/List;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->input$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$sendGiftResponse(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->sendGiftResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onBeautyClickListener:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;

    if-eqz p0, :cond_0

    const-string v0, "v2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;->onBeautyClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v2, 0x7f0a0bf4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_2
    new-array v2, v2, [I

    const v4, 0x7f0a0157

    .line 4
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget v2, v2, p1

    aget v3, v3, p1

    sub-int/2addr v2, v3

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_4
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v0, :cond_5

    .line 9
    div-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 10
    :cond_5
    div-int/lit8 v2, v2, 0x3

    .line 11
    :goto_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->layoutHeight:I

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onKeyboardHeightChanged(II)V

    :cond_6
    :goto_3
    return-void
.end method

.method private static final input$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Ljava/lang/String;Z)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;->getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getPreferentialLang()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOtherLanguage(Ljava/lang/String;)V

    :cond_1
    const-string p2, "msg"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->addMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    .line 6
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 p2, 0x0

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$input$1$1$2;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$input$1$1$2;-><init>()V

    .line 9
    invoke-static {p0, v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    :cond_2
    return-void
.end method

.method private final sendGiftResponse(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemBean.price"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    .line 4
    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    .line 5
    iput p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->numbers:I

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getSvgaUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMp4Url()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->svga_url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p1

    iput p1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    .line 9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourctTypeId()I

    move-result p1

    iput p1, v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->typeId:I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    const/4 p2, 0x1

    const-string p3, ""

    invoke-static {v0, p3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->from(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;Ljava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    if-eqz p2, :cond_1

    const-string p3, "giftMessage"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method


# virtual methods
.method public final addMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->messageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final getBeautyIcon()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->beautyIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "beautyIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBottomLayout()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->bottomLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bottomLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChatContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->chatContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "chatContentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGiftFragment()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    return-object v0
.end method

.method public final getLayoutHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->layoutHeight:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01dd

    return v0
.end method

.method public final getOnBeautyClickListener()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onBeautyClickListener:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSvgaImageView()Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "svgaImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTrtcUserProvider()Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final gift(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f13000b

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getInstance(IILjava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object p1

    const-string v0, "getInstance(\n           \u2026           true\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "gift"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "showBeauty"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7f0a054f

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getBeautyIcon()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getBeautyIcon()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/e;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v2, 0x7f0f05fe

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getBeautyIcon()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const v2, 0x7f0f05ff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$MyAdapter;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->messageList:Ljava/util/List;

    invoke-direct {v4, v0, v5}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$MyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    .line 11
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 12
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$3;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$3;-><init>(I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "resources.openRawResource(R.raw.gift_new)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v1

    .line 17
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$4;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$4;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;)V

    const-string v4, "gift_btn"

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    if-eqz p1, :cond_4

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$6;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$initView$6;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final input(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mute"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hideDanmu"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->setOnSendClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$d;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.TrtcUserProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyboardHeightChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TrtcChat"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42200000    # 40.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->layoutHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    const v3, 0x7f0a0d86

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_5

    const v3, 0x7f0a0aa8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_4
    if-nez v4, :cond_8

    goto :goto_6

    .line 10
    :cond_8
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p1, v5

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr p1, v3

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_9
    move-object v2, v1

    :goto_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getBottomLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    sub-int/2addr p1, v0

    .line 11
    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_7

    :cond_a
    move-object p1, v1

    :goto_7
    if-nez p1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :goto_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->getChatContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method public bridge synthetic onSelectGift(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lu8/a;->a(Lu8/b;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectGift(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZLcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/guochao/faceshow/gift/SendGiftCallBack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;IZ",
            "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isLuckyGift()Z

    move-result v1

    invoke-direct {p3, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x15

    .line 5
    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    .line 6
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setToUserIds(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBusinessId(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string v0, "1"

    .line 8
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 9
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemBean.price"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSinglePrice(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v0, v0, p4

    move v6, v0

    goto :goto_1

    :catch_0
    const/4 v6, 0x0

    .line 13
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getItemType()I

    move-result v7

    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/gift/SendGiftCallBack;)V

    .line 14
    new-instance p6, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;

    move-object v0, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$onSelectGift$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;)V

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v7

    move-object v2, p3

    move-object v3, v8

    move-object v4, p6

    move v7, p5

    .line 15
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->checkSendGiftType(Landroidx/lifecycle/LifecycleOwner;ILcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZIZ)V

    return-void
.end method

.method public bridge synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lu8/a;->c(Lu8/b;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public final setBeautyIcon(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->beautyIcon:Landroid/view/View;

    return-void
.end method

.method public final setBottomLayout(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->bottomLayout:Landroid/view/View;

    return-void
.end method

.method public final setChatContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->chatContentView:Landroid/view/View;

    return-void
.end method

.method public final setGiftFragment(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->giftFragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    return-void
.end method

.method public final setLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->layoutHeight:I

    return-void
.end method

.method public final setOnBeautyClickListener(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onBeautyClickListener:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setSvgaImageView(Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method public final setTrtcUserProvider(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->trtcUserProvider:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->userId:Ljava/lang/String;

    return-void
.end method
