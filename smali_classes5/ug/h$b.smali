.class final Lug/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/h;->T(Lug/j;Lug/q;Lug/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/q;

.field final synthetic b:Lug/r;


# direct methods
.method constructor <init>(Lug/q;Lug/r;)V
    .locals 0

    iput-object p1, p0, Lug/h$b;->a:Lug/q;

    iput-object p2, p0, Lug/h$b;->b:Lug/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lug/h$b;->a:Lug/q;

    iget-object v1, p0, Lug/h$b;->b:Lug/r;

    invoke-static {v0, v1}, Lug/h;->k(Lug/q;Lug/r;)V

    return-void
.end method
