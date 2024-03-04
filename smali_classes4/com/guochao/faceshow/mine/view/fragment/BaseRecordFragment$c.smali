.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const v2, 0x7f0a0587

    .line 1
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0a0c36

    .line 2
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->e(I)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0c09

    .line 3
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->e(I)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0a0c19

    .line 4
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->e(I)Landroid/widget/TextView;

    move-result-object v5

    const v7, 0x7f0a0c31

    .line 5
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->e(I)Landroid/widget/TextView;

    move-result-object v7

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    const-string v8, ""

    .line 7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v9, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->isType:I

    const-string v10, "#1AA930"

    const-string v11, "*"

    const-string v12, "+"

    if-eqz v9, :cond_12

    const/16 v13, 0xe

    if-eq v9, v13, :cond_11

    const v13, 0x7f0f0169

    const-string v14, "-"

    const-string v16, "#bb0462"

    const/4 v15, 0x1

    const-string v17, "#22ac38"

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    const/4 v10, 0x0

    const v13, 0x7f0f0165

    packed-switch v9, :pswitch_data_2

    .line 9
    iget-object v9, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v9, v1, v6}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->c2(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 10
    :cond_0
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v13, "userId"

    invoke-static {v9, v13}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v13, "#1793fb"

    const-string v9, "@"

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v12, 0x7f120787

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v12, v15, [Ljava/lang/Object;

    .line 12
    iget-object v15, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    aput-object v15, v12, v10

    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_1

    goto :goto_0

    :cond_1
    move v10, v12

    .line 14
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    .line 15
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v1, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v13, 0x22

    invoke-virtual {v12, v1, v10, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0162

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 23
    :cond_2
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f120786

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v14, v15, [Ljava/lang/Object;

    .line 24
    iget-object v15, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userName:Ljava/lang/String;

    aput-object v15, v14, v10

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_3

    goto :goto_1

    :cond_3
    move v10, v14

    .line 26
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userName:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    .line 27
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v1, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v13, 0x22

    invoke-virtual {v14, v1, v10, v9, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0161

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 35
    :pswitch_0
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->W1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V

    goto/16 :goto_5

    .line 36
    :pswitch_1
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12049e

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 37
    :pswitch_2
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12049d

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "-"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 38
    :pswitch_3
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12049a

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 39
    :pswitch_4
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12049c

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 40
    :pswitch_5
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f120499

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 41
    :pswitch_6
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12049b

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "-"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 42
    :pswitch_7
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1205bd

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 43
    :pswitch_8
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1205bf

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 44
    :pswitch_9
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1205bc

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 45
    :pswitch_a
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1205be

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "-"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 46
    :pswitch_b
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget v7, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1208f6

    new-array v8, v15, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v1, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 49
    :cond_4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget v7, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->account:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1208f5

    new-array v8, v15, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->userName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v1, v7, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_5
    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 56
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0164

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 59
    :pswitch_c
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1203c2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "+"

    const-string v9, "#22ac38"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 60
    :pswitch_d
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f1206a1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0589

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "-"

    const-string v9, "#bb0462"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 61
    :pswitch_e
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f120791

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f029f

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 66
    :pswitch_f
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0f0168

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 71
    :pswitch_10
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0f0168

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120503

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 76
    :pswitch_11
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->types:I

    if-ne v1, v15, :cond_6

    .line 77
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f120af0

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    const/4 v9, 0x2

    if-ne v1, v9, :cond_7

    .line 78
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f120af4

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const/4 v9, 0x4

    if-ne v1, v9, :cond_8

    .line 79
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f120af1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v9, 0x5

    if-ne v1, v9, :cond_9

    .line 80
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f120af3

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 81
    :cond_9
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f120af2

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->R1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 87
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->applyState:I

    if-nez v1, :cond_b

    .line 90
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120adf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_b
    if-ne v1, v15, :cond_c

    .line 92
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 94
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 96
    :cond_d
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 97
    :pswitch_12
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0168

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->payState:I

    if-nez v1, :cond_e

    .line 103
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120768

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 105
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 107
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 109
    :cond_10
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 110
    :cond_11
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12069e

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f05a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v8, "-"

    const-string v9, "#bb0462"

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v10}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 111
    :cond_12
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    const v7, 0x7f12077b

    invoke-virtual {v1, v7}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f029e

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V

    return-void
.end method
