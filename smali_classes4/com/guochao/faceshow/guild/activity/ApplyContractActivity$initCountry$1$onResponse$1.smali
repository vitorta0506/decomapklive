.class public final Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1",
        "Lva/a$c;",
        "",
        "Lcom/guochao/faceshow/bean/CountryData;",
        "countryBeans",
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
.method constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->$systemCountry:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/CountryData;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->$systemCountry:Ljava/lang/String;

    const/4 v3, 0x1

    .line 4
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cb.countryNum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$setCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cb.logo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$setLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {p1}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$getLogo$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 8
    sget v0, Lcom/guochao/faceshow/guild/R$mipmap;->ic_earth:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->rvCountry:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->$this_initCountry:Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;->tvCountry:Landroid/widget/TextView;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initCountry$1$onResponse$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->access$getCountry_num$p(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "+%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
