.class public Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SOUND:F = 0.05f

.field private static final TAG:Ljava/lang/String; = "Sound"

.field static sSoundPoolManager:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultButtonSound:I

.field private mDefaultCountDownSound:I

.field private mSoundIds:Landroid/util/SparseIntArray;

.field mSoundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mDefaultButtonSound:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mDefaultCountDownSound:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundIds:Landroid/util/SparseIntArray;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 8
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    const/4 v0, 0x4

    .line 10
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 11
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 12
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;Landroid/media/SoundPool;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->lambda$playQrScanSound$0(Landroid/media/SoundPool;II)V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;
    .locals 1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->sSoundPoolManager:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->sSoundPoolManager:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->sSoundPoolManager:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->sSoundPoolManager:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    return-object p0
.end method

.method private synthetic lambda$playQrScanSound$0(Landroid/media/SoundPool;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    return-void
.end method


# virtual methods
.method public addSound(I)I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public pause(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    return-void
.end method

.method public play(I)I
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3d4ccccd    # 0.05f

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    return p1
.end method

.method public playCountDown()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mDefaultCountDownSound:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f110003

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->addSound(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mDefaultCountDownSound:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mDefaultCountDownSound:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->play(I)I

    move-result v0

    return v0
.end method

.method public playDefaultButtonSound()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mContext:Landroid/content/Context;

    const v2, 0x7f110026

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    const/4 v0, 0x1

    return v0
.end method

.method public playQrScanSound()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/q;-><init>(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mContext:Landroid/content/Context;

    const v2, 0x7f11002c

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    const/4 v0, 0x1

    return v0
.end method

.method public playRaw(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method
