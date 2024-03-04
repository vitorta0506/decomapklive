.class public final synthetic Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lu1/c;

.field public final synthetic b:Ln1/o;

.field public final synthetic c:Ll1/g;

.field public final synthetic d:Ln1/i;


# direct methods
.method public synthetic constructor <init>(Lu1/c;Ln1/o;Ll1/g;Ln1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/a;->a:Lu1/c;

    iput-object p2, p0, Lu1/a;->b:Ln1/o;

    iput-object p3, p0, Lu1/a;->c:Ll1/g;

    iput-object p4, p0, Lu1/a;->d:Ln1/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lu1/a;->a:Lu1/c;

    iget-object v1, p0, Lu1/a;->b:Ln1/o;

    iget-object v2, p0, Lu1/a;->c:Ll1/g;

    iget-object v3, p0, Lu1/a;->d:Ln1/i;

    invoke-static {v0, v1, v2, v3}, Lu1/c;->b(Lu1/c;Ln1/o;Ll1/g;Ln1/i;)V

    return-void
.end method
