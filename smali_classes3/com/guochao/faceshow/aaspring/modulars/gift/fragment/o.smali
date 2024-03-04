.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/o;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/o;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordListBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;Lcom/guochao/faceshow/aaspring/beans/GiftLuckRecordListBean;)V

    return-void
.end method
