.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/q;->a:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/q;->a:Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    invoke-static {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->a(Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;Landroid/media/SoundPool;II)V

    return-void
.end method
