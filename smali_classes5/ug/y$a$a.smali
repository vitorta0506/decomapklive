.class Lug/y$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/y$a;->e(Lug/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/q;

.field final synthetic b:Lug/y$a;


# direct methods
.method constructor <init>(Lug/y$a;Lug/q;)V
    .locals 0

    iput-object p1, p0, Lug/y$a$a;->b:Lug/y$a;

    iput-object p2, p0, Lug/y$a$a;->a:Lug/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lug/y$a$a;->b:Lug/y$a;

    iget-object v1, p0, Lug/y$a$a;->a:Lug/q;

    invoke-static {v0, v1}, Lug/y$a;->a(Lug/y$a;Lug/q;)V

    return-void
.end method
