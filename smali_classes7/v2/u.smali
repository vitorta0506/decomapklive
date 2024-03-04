.class public final synthetic Lv2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv2/w$a;

.field public final synthetic b:Lv2/w;

.field public final synthetic c:Lv2/j;

.field public final synthetic d:Lv2/m;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/u;->a:Lv2/w$a;

    iput-object p2, p0, Lv2/u;->b:Lv2/w;

    iput-object p3, p0, Lv2/u;->c:Lv2/j;

    iput-object p4, p0, Lv2/u;->d:Lv2/m;

    iput-object p5, p0, Lv2/u;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lv2/u;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lv2/u;->a:Lv2/w$a;

    iget-object v1, p0, Lv2/u;->b:Lv2/w;

    iget-object v2, p0, Lv2/u;->c:Lv2/j;

    iget-object v3, p0, Lv2/u;->d:Lv2/m;

    iget-object v4, p0, Lv2/u;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Lv2/u;->f:Z

    invoke-static/range {v0 .. v5}, Lv2/w$a;->a(Lv2/w$a;Lv2/w;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V

    return-void
.end method
