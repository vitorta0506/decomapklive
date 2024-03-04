.class public Lcom/guochao/faceshow/activity/TCVideoChooseActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "TCVideoChooseActivity"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:I

.field private c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

.field private d:Lcom/guochao/faceshow/adapters/a;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Lcom/guochao/faceshow/adapters/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->d:Lcom/guochao/faceshow/adapters/a;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    return p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->k0()V

    return-void
.end method

.method private init()V
    .locals 3

    const v0, 0x7f0a095c

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->b:I

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->h(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;-><init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->setOnItemClickListener(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->h(Z)V

    :goto_0
    return-void
.end method

.method private k0()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->b:I

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->c:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    invoke-virtual {v1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->e()Lcom/guochao/faceshow/bean/TCVideoFileInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    .line 5
    sget-object v0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->n:Ljava/lang/String;

    const-string v1, "select file null"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    const v0, 0x7f1209d5

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->l0(Lcom/guochao/faceshow/bean/TCVideoFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    const v0, 0x7f1209ce

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->n0(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->f:Z

    const v0, 0x7f120328

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->n0(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v5, "duration"

    .line 16
    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getThumbPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_video_editer_path"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "video_editer_uri"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->e:I

    const-string v3, "from"

    if-ne v1, v2, :cond_4

    .line 20
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    .line 21
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v1, "choose"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->j:Ljava/lang/String;

    const-string v2, "titleName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->g:Ljava/lang/String;

    const-string v2, "typeId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->h:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->m:Ljava/lang/String;

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->i:Ljava/lang/String;

    const-string v2, "musicId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->l:Ljava/lang/String;

    const-string v2, "musicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->k:Ljava/lang/String;

    const-string v2, "tyPeName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "1"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method private l0(Lcom/guochao/faceshow/bean/TCVideoFileInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDuration()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 2
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x9

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    :catch_0
    return v1

    :cond_2
    return v2
.end method

.method private m0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;-><init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method private n0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f13013d

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u77e5\u9053\u4e86"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00bb

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/adapters/a;->b()Lcom/guochao/faceshow/adapters/a;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->d:Lcom/guochao/faceshow/adapters/a;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CHOOSE_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->e:I

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topic_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->m:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "musicId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->i:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "musicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->l:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "titleName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tyPeName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->k:Ljava/lang/String;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->init()V

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->m0()V

    const p1, 0x7f120551

    .line 15
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventBus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "upLoadOver"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
