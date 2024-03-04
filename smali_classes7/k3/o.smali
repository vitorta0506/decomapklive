.class public final synthetic Lk3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:Lb2/e;


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;Lb2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/o;->a:Lk3/w$a;

    iput-object p2, p0, Lk3/o;->b:Lb2/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/o;->a:Lk3/w$a;

    iget-object v1, p0, Lk3/o;->b:Lb2/e;

    invoke-static {v0, v1}, Lk3/w$a;->a(Lk3/w$a;Lb2/e;)V

    return-void
.end method
