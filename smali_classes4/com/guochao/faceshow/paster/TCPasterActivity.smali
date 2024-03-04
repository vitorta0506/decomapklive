.class public Lcom/guochao/faceshow/paster/TCPasterActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/guochao/faceshow/views/TCLayerViewGroup$a;
.implements Lcom/guochao/faceshow/views/TCLayerOperationView$a;
.implements Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Lcom/tencent/ugc/TXVideoEditer;

.field private e:Landroid/widget/FrameLayout;

.field private f:J

.field private g:J

.field private h:Landroid/widget/TextView;

.field private i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:I

.field private n:Z

.field private o:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

.field private p:J

.field private q:Lcom/guochao/faceshow/views/TimeSeekBar;

.field private r:Landroidx/recyclerview/widget/RecyclerView;

.field private s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/widget/TextView;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->m:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->n:Z

    const/16 v0, 0x8

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->w:I

    return-void
.end method

.method private A0()V
    .locals 6

    const v0, 0x7f0a0102

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d0b

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120729

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0c74

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->h:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0864

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/TCLayerViewGroup;

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    .line 6
    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->setOnItemClickListener(Lcom/guochao/faceshow/views/TCLayerViewGroup$a;)V

    const v1, 0x7f0a0865

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->j:Landroid/view/View;

    .line 8
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0866

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0196

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->t:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0863

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->l:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07d6

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TimeSeekBar;

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->o:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/guochao/faceshow/views/TimeSeekBar;->setMaxDurationMs(J)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/guochao/faceshow/views/TimeSeekBar;->m(JJ)V

    const v0, 0x7f0a08d6

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    new-instance v0, Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    const v2, 0x7f0d0315

    invoke-direct {v0, p0, p0, v2}, Lcom/guochao/faceshow/paster/TCPasterActivity$a;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 24
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->setEmptyIcon(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    new-instance v1, Lcom/guochao/faceshow/paster/TCPasterActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$b;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->setRangeChangeListener(Lcom/guochao/faceshow/views/TimeSeekBar$d;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    new-instance v1, Lcom/guochao/faceshow/paster/TCPasterActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$c;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->setProgressChangeListener(Lcom/guochao/faceshow/views/TimeSeekBar$c;)V

    return-void
.end method

.method private B0()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_3

    .line 2
    :cond_1
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/paster/TCPasterActivity;->E0(Z)V

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->H0()V

    :cond_3
    :goto_1
    return-void
.end method

.method private E0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->setProgressChange(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXVideoEditer;->refreshOneFrame()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const v0, 0x7f0f0305

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 5
    iput v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXVideoEditer;->pausePlay()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXVideoEditer;->pausePlay()V

    .line 9
    iput v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private F0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->n:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->G0()V

    :cond_0
    return-void
.end method

.method private G0()V
    .locals 7

    .line 1
    invoke-static {}, Lab/b;->d()Lab/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Lab/b;->e()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Lab/b;->c(I)Lab/a;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lab/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/views/q;->a(Landroid/content/Context;)Lcom/guochao/faceshow/views/PasterOperationView;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setImageBitamp(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {v2}, Lab/a;->i()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/PasterOperationView;->setChildType(I)V

    .line 8
    invoke-virtual {v2}, Lab/a;->g()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setCenterX(F)V

    .line 9
    invoke-virtual {v2}, Lab/a;->h()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setCenterY(F)V

    .line 10
    invoke-virtual {v2}, Lab/a;->e()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setImageRotate(F)V

    .line 11
    invoke-virtual {v2}, Lab/a;->b()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setImageScale(F)V

    .line 12
    invoke-virtual {v2}, Lab/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/PasterOperationView;->setPasterPath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lab/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/views/PasterOperationView;->setPasterName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setIOperationViewClickListener(Lcom/guochao/faceshow/views/TCLayerOperationView$a;)V

    .line 15
    invoke-virtual {v2}, Lab/a;->f()J

    move-result-wide v5

    .line 16
    invoke-virtual {v2}, Lab/a;->a()J

    move-result-wide v2

    .line 17
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->n(JJ)V

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a(Lcom/guochao/faceshow/views/TCLayerOperationView;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lab/b;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->m:I

    return-void
.end method

.method private H0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/TimeSeekBar;->setProgressChange(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->l()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0f0346

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->g:J

    iget-wide v3, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->p:J

    iget-wide v3, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    return-void
.end method

.method private I0()V
    .locals 6

    .line 1
    invoke-static {}, Lab/b;->d()Lab/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lab/b;->b()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b(I)Lcom/guochao/faceshow/views/TCLayerOperationView;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/PasterOperationView;

    .line 5
    new-instance v3, Lab/a;

    invoke-direct {v3}, Lab/a;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Lab/a;->p(F)V

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Lab/a;->q(F)V

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageRotate()F

    move-result v4

    invoke-virtual {v3, v4}, Lab/a;->n(F)V

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageScale()F

    move-result v4

    invoke-virtual {v3, v4}, Lab/a;->k(F)V

    .line 10
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/PasterOperationView;->getPasterPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lab/a;->m(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lab/a;->o(J)V

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lab/a;->j(J)V

    .line 13
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/PasterOperationView;->getPasterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lab/a;->l(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/PasterOperationView;->getChildType()I

    move-result v2

    invoke-virtual {v3, v2}, Lab/a;->r(I)V

    .line 15
    invoke-virtual {v0, v3}, Lab/b;->a(Lab/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private N0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    iget-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->a:J

    iget-wide v3, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/views/TimeSeekBar;->o(JJ)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private P0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->p()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->w:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/guochao/faceshow/paster/TCPasterActivity$f;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/paster/TCPasterActivity$f;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/paster/TCPasterActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$g;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;)V

    return-void
.end method

.method private Q0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TimeSeekBar;->l()V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->g:J

    iget-wide v3, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 5
    new-instance v0, Lcom/guochao/faceshow/paster/TCPasterActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$e;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private S0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->stopPlay()V

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0f0305

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private T0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->g:J

    mul-int/lit16 v0, v0, 0xbb8

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->a:J

    const-wide/16 v3, 0x7d0

    add-long v5, v1, v3

    .line 3
    iput-wide v5, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->b:J

    .line 4
    iget-wide v7, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->f:J

    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    sub-long v0, v7, v3

    .line 5
    iput-wide v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->a:J

    .line 6
    iput-wide v7, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->b:J

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 7
    iput-wide v7, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->b:J

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/paster/TCPasterActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/paster/TCPasterActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->E0(Z)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->o:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TimeSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->q:Lcom/guochao/faceshow/views/TimeSeekBar;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->addTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getEditer()Lcom/tencent/ugc/TXVideoEditer;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getTXVideoInfo()Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->o:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->g:J

    .line 6
    iget-wide v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    iput-wide v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->f:J

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->T0()V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getAllThumbnails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TCLayerViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/paster/TCPasterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->r0()V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/paster/TCPasterActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->p:J

    return-wide p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/tencent/ugc/TXVideoEditer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    return-object p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->k:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/paster/TCPasterActivity;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/paster/TCPasterActivity;->s0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-void
.end method

.method static synthetic q0(Lcom/guochao/faceshow/paster/TCPasterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->N0()V

    return-void
.end method

.method private r0()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->b(I)Lcom/guochao/faceshow/views/TCLayerOperationView;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/PasterOperationView;

    .line 5
    new-instance v3, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    invoke-direct {v3}, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageX()I

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageX()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->x:F

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageY()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->y:F

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getImageWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXRect;->width:F

    .line 10
    new-instance v4, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;

    invoke-direct {v4}, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getRotateBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->pasterImage:Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getStartTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->startTime:J

    .line 13
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getEndTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->endTime:J

    .line 14
    iput-object v3, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;->frame:Lcom/tencent/ugc/TXVideoEditConstants$TXRect;

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setPasterList(Ljava/util/List;)V

    return-void
.end method

.method private s0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, ".png"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_3
    new-instance p1, Ly7/c;

    invoke-direct {p1}, Ly7/c;-><init>()V

    .line 11
    iput-object p2, p1, Ly7/c;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Ly7/c;->b:Z

    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 14
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->T0()V

    .line 16
    invoke-static {p0}, Lcom/guochao/faceshow/views/q;->a(Landroid/content/Context;)Lcom/guochao/faceshow/views/PasterOperationView;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/PasterOperationView;->setPasterPath(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/PasterOperationView;->setChildType(I)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setImageBitamp(Landroid/graphics/Bitmap;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setCenterX(F)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setCenterY(F)V

    .line 22
    iget-wide v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->a:J

    iget-wide v4, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->b:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/guochao/faceshow/views/TCLayerOperationView;->n(JJ)V

    .line 23
    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setIOperationViewClickListener(Lcom/guochao/faceshow/views/TCLayerOperationView$a;)V

    .line 24
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/views/PasterOperationView;->setPasterName(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->a(Lcom/guochao/faceshow/views/TCLayerOperationView;)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    new-instance p2, Lcom/guochao/faceshow/paster/TCPasterActivity$d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$d;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private t0()V
    .locals 2

    .line 1
    invoke-static {}, Lab/b;->d()Lab/b;

    move-result-object v0

    invoke-virtual {v0}, Lab/b;->b()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setPasterList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->stopPlay()V

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method private u0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->I0()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method private v0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->E0(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->P0()V

    return-void
.end method

.method private y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->stopPlay()V

    .line 3
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->e:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->videoView:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    .line 5
    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->renderMode:I

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V

    return-void
.end method


# virtual methods
.method public E()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->r0()V

    return-void
.end method

.method public O()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->r0()V

    return-void
.end method

.method public f(Lcom/guochao/faceshow/views/TCLayerOperationView;II)V
    .locals 0

    iput p3, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->m:I

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getSelectedLayerOperationView()Lcom/guochao/faceshow/views/TCLayerOperationView;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/PasterOperationView;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getSelectedViewIndex()I

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->i:Lcom/guochao/faceshow/views/TCLayerViewGroup;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->d(Lcom/guochao/faceshow/views/TCLayerOperationView;)V

    .line 4
    new-instance v0, Ly7/c;

    invoke-direct {v0}, Ly7/c;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput-object v1, v0, Ly7/c;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Ly7/c;->b:Z

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->s:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->r0()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0087

    return v0
.end method

.method public initView()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->u0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->l:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->u0()V

    goto :goto_0

    .line 7
    :sswitch_1
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->v0()V

    goto :goto_0

    .line 8
    :sswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->B0()V

    goto :goto_0

    .line 9
    :sswitch_3
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->t0()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0102 -> :sswitch_3
        0x7f0a0196 -> :sswitch_2
        0x7f0a0863 -> :sswitch_1
        0x7f0a0c74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "ResourceListItemBean"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->v:Ljava/util/List;

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->initData()V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->A0()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->y0()V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->F0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->removeTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->t0()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->S0()V

    return-void
.end method

.method public onPreviewFinishedWrapper()V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/paster/TCPasterActivity$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/paster/TCPasterActivity$i;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->Q0()V

    return-void
.end method

.method public onPreviewProgressWrapper(I)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/paster/TCPasterActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/paster/TCPasterActivity$h;-><init>(Lcom/guochao/faceshow/paster/TCPasterActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_3

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->Q0()V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->H0()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->Q0()V

    return-void
.end method
