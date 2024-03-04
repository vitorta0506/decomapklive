.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/a;->a:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->b(Ljava/lang/Runnable;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
