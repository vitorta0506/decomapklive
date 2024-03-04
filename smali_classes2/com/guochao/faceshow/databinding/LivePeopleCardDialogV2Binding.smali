.class public final Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomButtonArea:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatTV:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final focus:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final micStatus:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardAtBtn:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardChat:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardNickName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardReport:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardUserFans:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardUserFcoin:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardUserFocus:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardUserId:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final peopleCardUserSent:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final role:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sendGift:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final spaceView:Landroid/widget/Space;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfo1Layout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userInfo3Layout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/Space;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Landroid/widget/Space;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->bottomButtonArea:Landroid/widget/LinearLayout;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->chatTV:Landroid/widget/TextView;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->focus:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->micStatus:Landroid/widget/FrameLayout;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardAtBtn:Landroid/widget/ImageView;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardChat:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardNickName:Landroid/widget/TextView;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardReport:Landroid/widget/ImageView;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardUserFans:Landroid/widget/TextView;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardUserFcoin:Landroid/widget/TextView;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardUserFocus:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardUserId:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->peopleCardUserSent:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->role:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->sendGift:Landroid/widget/FrameLayout;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->spaceView:Landroid/widget/Space;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->userInfo1Layout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->userInfo3Layout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;
    .locals 24
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f0a00fd

    .line 1
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0153

    .line 2
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a01e0

    .line 3
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a042f

    .line 4
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0782

    .line 5
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a086c

    .line 6
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a086d

    .line 7
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a086e

    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a086f

    .line 9
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0870

    .line 10
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0871

    .line 11
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0872

    .line 12
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0873

    .line 13
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0874

    .line 14
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a09d0

    .line 15
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0a5d

    .line 16
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/FrameLayout;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0ab6

    .line 17
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/Space;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0da4

    .line 18
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    if-eqz v22, :cond_0

    const v1, 0x7f0a0da5

    .line 19
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/LinearLayout;

    if-eqz v23, :cond_0

    .line 20
    new-instance v1, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v23}, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;-><init>(Landroid/widget/FrameLayout;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/Space;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d03b3

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/LivePeopleCardDialogV2Binding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
