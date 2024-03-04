.class public final Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initCountry(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1",
        "Lva/a$d;",
        "Lcom/guochao/faceshow/bean/CountryData;",
        "countryBean",
        "",
        "onResponse",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $systemCountry:Ljava/lang/String;

.field final synthetic $this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iput-object p3, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$systemCountry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/bean/CountryData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryBean.countryNum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$setCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryBean.logo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$setLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$getCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "US"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/faceshow/guild/R$mipmap;->ic_country_america:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/faceshow/guild/R$mipmap;->ic_country_canada:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {p1}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$getLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 9
    sget v0, Lcom/guochao/faceshow/guild/R$mipmap;->ic_earth:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->tvCountry:Landroid/widget/TextView;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$getCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "+%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$systemCountry:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    invoke-direct {v0, v1, p1, v2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V

    .line 14
    invoke-static {p1, v0}, Lva/a;->a(Landroid/content/Context;Lva/a$c;)V

    :goto_1
    return-void
.end method
