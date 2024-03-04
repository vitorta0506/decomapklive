.class public final synthetic Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lu1/c;

.field public final synthetic b:Ln1/o;

.field public final synthetic c:Ln1/i;


# direct methods
.method public synthetic constructor <init>(Lu1/c;Ln1/o;Ln1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/b;->a:Lu1/c;

    iput-object p2, p0, Lu1/b;->b:Ln1/o;

    iput-object p3, p0, Lu1/b;->c:Ln1/i;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu1/b;->a:Lu1/c;

    iget-object v1, p0, Lu1/b;->b:Ln1/o;

    iget-object v2, p0, Lu1/b;->c:Ln1/i;

    invoke-static {v0, v1, v2}, Lu1/c;->c(Lu1/c;Ln1/o;Ln1/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
