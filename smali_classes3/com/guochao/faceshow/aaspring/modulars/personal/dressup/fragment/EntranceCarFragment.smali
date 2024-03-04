.class public Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

.field private b:J

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field public f:Landroid/widget/TextView;

.field g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->b:J

    return-wide p1
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a2()V

    return-void
.end method

.method private T1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 2

    const-string p1, "tokens/user/info/cancelDressUp"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    const-string v0, "types"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private V1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->e:Z

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrlV2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrlV2()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrlV2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrlV2()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "Car"

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "V2.svga"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/TranslateUtils;->getTranslateFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 7
    sget-object v3, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLr9/a;)V

    .line 9
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrlV2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static W1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;-><init>()V

    return-object v0
.end method

.method private Z1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 2

    const-string v0, " tokens/user/info/setDressUp"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->id:I

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "dressUpId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x2

    const-string v1, "types"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private a2()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->getInfoDetailV2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/high16 v6, 0x43290000    # 169.0f

    const/4 v7, 0x2

    if-ne v2, v4, :cond_0

    .line 2
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v4, v7

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ne v2, v4, :cond_1

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v5, :cond_c

    const v2, 0x7f0a05a2

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v6, 0x7f0a0c7b

    .line 8
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a07cb

    .line 9
    invoke-virtual {v1, v8}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 10
    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;->setImageResourceDressUp(Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "x"

    if-eqz v9, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120855

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getSpNum()I

    move-result v2

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getSpNum()I

    move-result v2

    :goto_1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v9

    const/16 v11, 0x8

    const v12, 0x7f060109

    const v13, 0x7f06009c

    const/16 v14, 0x21

    if-eq v9, v5, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v9

    if-ne v9, v7, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v9, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 18
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v13, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_5

    .line 20
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v9, v4, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 21
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v13, v9, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v9, v4, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 24
    :cond_6
    :goto_3
    new-instance v7, Landroid/text/SpannableString;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "   "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v9, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 26
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v13, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_7

    .line 28
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v9, v4, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 29
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v13, v9, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 30
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v9, v4, v2, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 31
    :goto_4
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/VipLevelDrawableUtils;->getVipImgByLevel(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_5
    iget v2, v3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v6, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v2, v6, :cond_8

    .line 35
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-static {v8}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v2

    iget-object v6, v3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->mvpUrl:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/g;

    invoke-virtual {v2, v8}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_8
    const v2, 0x7f0a0d07

    .line 37
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 38
    iget v6, v3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v7, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v6, v7, :cond_a

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getCanItBeUsed()I

    move-result v7

    if-ne v7, v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    invoke-static {v6, v5}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTimeMVP(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 40
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getExpireTime()J

    move-result-wide v13

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v15

    iget-wide v5, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->b:J

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v17}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTime(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const v5, 0x7f12052b

    .line 41
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f0a0741

    if-eqz v5, :cond_b

    .line 42
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 43
    :cond_b
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getBagAttribute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_d

    const v5, 0x7f12084a

    .line 45
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_c
    const v2, 0x7f0a0d0c

    .line 46
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTitleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a052f

    .line 48
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f0f0159

    .line 49
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    :goto_9
    const v2, 0x7f0a05b1

    .line 50
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 52
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_e
    const/4 v4, 0x4

    .line 53
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public X1()V
    .locals 6

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getCanItBeUsed()I

    move-result v2

    const-string v3, "4"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 5
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->T1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v2, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v1, v2, :cond_2

    .line 11
    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->received:I

    if-eq v0, v5, :cond_2

    .line 12
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "get_car"

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 14
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v0, v1, :cond_4

    .line 16
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_use_click:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarId(Ljava/lang/String;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSource(Ljava/lang/String;)V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSource(Ljava/lang/String;)V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrlV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getArFileUrlV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSourceV2(Ljava/lang/String;)V

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrlV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getFileUrlV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSourceV2(Ljava/lang/String;)V

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1207ee

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 33
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    const v1, 0x7f120636

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 35
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v1

    if-ne v1, v5, :cond_d

    .line 36
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v4, v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->g(IILandroidx/fragment/app/FragmentManager;)V

    goto :goto_3

    .line 38
    :cond_c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTypes()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 40
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x14

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->g(IILandroidx/fragment/app/FragmentManager;)V

    goto :goto_3

    .line 42
    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "currentItem"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 43
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->beFrom:I

    sget v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->BE_FROM_MVP:I

    if-ne v0, v1, :cond_10

    .line 44
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "charge"

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_3
    return-void
.end method

.method public Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->g:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setSelected(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->b:J

    invoke-static {p1, p3, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTimePair(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/DressUpData;J)Landroid/util/Pair;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x440

    return p1

    :cond_0
    const/16 p1, 0x441

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0179

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f0a0240

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->e:Z

    const v0, 0x7f0a0332

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->c:Landroid/view/View;

    const v0, 0x7f0a0330

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f120a26

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->d:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41700000    # 15.0f

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x43160000    # 150.0f

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setItemType(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCanItBeUsed(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    const v1, 0x7f120a28

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setTitleName(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f06009a

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v2, "api/token/user/current/user/dress/live/effect/info"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "types"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const/16 v1, 0x14

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0240

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->X1()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x440

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0371

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0373

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->loadData(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
