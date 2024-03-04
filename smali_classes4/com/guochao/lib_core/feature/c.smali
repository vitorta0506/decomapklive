.class public final synthetic Lcom/guochao/lib_core/feature/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/lib_core/feature/c;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/lib_core/feature/c;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/lib_core/feature/c;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/lib_core/feature/c;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/guochao/lib_core/feature/FeatureResult;

    invoke-static {v0, v1, p1}, Lcom/guochao/lib_core/feature/FeatureKt;->b([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/guochao/lib_core/feature/FeatureResult;)V

    return-void
.end method
