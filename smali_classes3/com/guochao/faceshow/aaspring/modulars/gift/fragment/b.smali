.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/b;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;)V

    return-void
.end method
