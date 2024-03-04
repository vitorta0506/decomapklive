.class public Li8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0388

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0389

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0a0774

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0d02e7

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/high16 v4, 0x41200000    # 10.0f

    .line 1
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    const/16 v5, 0x10

    const v6, 0x7f0a0529

    const v7, 0x7f0d0353

    const v8, 0x7f0d0398

    const v9, 0x7f0d02dd

    const v11, 0x7f0d02b3

    const v12, 0x7f0d02b5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0a0774

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v8, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 4
    :pswitch_1
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0850

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 6
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v10, v10, v4, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, 0x7f0d03a5

    .line 7
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    invoke-static {v3}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 11
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/MvpMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    :pswitch_2
    const/16 v4, 0x1e

    if-ne v4, v3, :cond_0

    .line 12
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 13
    :goto_0
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v4, 0x7f0d02e3

    .line 15
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    :pswitch_3
    const/16 v4, 0x1c

    if-ne v4, v3, :cond_1

    .line 18
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 19
    :goto_1
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 20
    invoke-static {v5}, Li8/a;->a(Landroid/view/ViewGroup;)V

    if-ne v4, v3, :cond_2

    const v3, 0x7f0d02ae

    goto :goto_2

    :cond_2
    const v3, 0x7f0d02af

    .line 21
    :goto_2
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 22
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/DressPresentViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/DressPresentViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    :pswitch_4
    const/16 v4, 0x1a

    if-ne v4, v3, :cond_3

    .line 24
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 25
    :goto_3
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v4, 0x7f0d02b2

    .line 29
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 30
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveShareViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveShareViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    :pswitch_5
    const/16 v4, 0x18

    if-ne v4, v3, :cond_4

    .line 32
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    :cond_4
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 33
    :goto_4
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-ne v4, v3, :cond_5

    const v3, 0x7f0d02b0

    goto :goto_5

    :cond_5
    const v3, 0x7f0d02b1

    .line 37
    :goto_5
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveGameInviteViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveGameInviteViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 40
    :pswitch_6
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 42
    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, v11, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 44
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 45
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 48
    :pswitch_7
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 50
    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, v12, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 52
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 53
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 56
    :pswitch_8
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f0801e0

    .line 58
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v4, 0x7f0d02b4

    .line 60
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 63
    :pswitch_9
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f0801e3

    .line 65
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0d02b6

    .line 68
    move-object v5, v2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 71
    :pswitch_a
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 73
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 75
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-static {v2}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 77
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/FaceMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/FaceMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 78
    :pswitch_b
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 80
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {v2}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 84
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/FaceMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/FaceMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 85
    :pswitch_c
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-static {v3}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 89
    invoke-virtual {v1, v7, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 91
    :pswitch_d
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v1, v7, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 95
    invoke-static {v3}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 96
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 97
    :pswitch_e
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 100
    invoke-static {v0, v2, v10}, Li8/a;->f(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 102
    :pswitch_f
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 105
    invoke-static {v0, v2, v13}, Li8/a;->f(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VoiceMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 107
    :pswitch_10
    invoke-virtual {v1, v8, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 109
    :pswitch_11
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 111
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 112
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    invoke-static {v2}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 115
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/GiftMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/GiftMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 116
    :pswitch_12
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v9, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    invoke-static {v2}, Li8/a;->a(Landroid/view/ViewGroup;)V

    .line 122
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/GiftMessageViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/GiftMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v2

    .line 123
    :pswitch_13
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0d0387

    .line 125
    invoke-virtual {v1, v4, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 126
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    :pswitch_14
    const v4, 0x7f0d0387

    .line 128
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {v1, v4, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 133
    :pswitch_15
    invoke-static/range {p1 .. p2}, Li8/a;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 135
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 136
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v11, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    .line 139
    :pswitch_16
    invoke-static/range {p1 .. p2}, Li8/a;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 142
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v12, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 143
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d038a

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d038b

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method
