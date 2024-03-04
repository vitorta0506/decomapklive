.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/date/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V

    return-void
.end method
