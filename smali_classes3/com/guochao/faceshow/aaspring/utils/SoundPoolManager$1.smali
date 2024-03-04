.class Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playRaw(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    return-void
.end method
