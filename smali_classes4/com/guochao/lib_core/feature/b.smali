.class public final synthetic Lcom/guochao/lib_core/feature/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/lib_core/feature/b;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/guochao/lib_core/feature/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/lib_core/feature/b;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/guochao/lib_core/feature/b;->b:Ljava/lang/String;

    check-cast p1, Lcom/guochao/lib_core/feature/FeatureResult;

    invoke-static {v0, v1, p1}, Lcom/guochao/lib_core/feature/FeatureKt;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method
