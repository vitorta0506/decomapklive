.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/f;->b:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;I)V

    return-void
.end method
