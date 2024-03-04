.class public final synthetic Lk3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk3/w$a;

.field public final synthetic b:Lk3/y;


# direct methods
.method public synthetic constructor <init>(Lk3/w$a;Lk3/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/v;->a:Lk3/w$a;

    iput-object p2, p0, Lk3/v;->b:Lk3/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk3/v;->a:Lk3/w$a;

    iget-object v1, p0, Lk3/v;->b:Lk3/y;

    invoke-static {v0, v1}, Lk3/w$a;->h(Lk3/w$a;Lk3/y;)V

    return-void
.end method
