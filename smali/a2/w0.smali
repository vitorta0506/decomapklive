.class public final synthetic La2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:Lv2/j;

.field public final synthetic c:Lv2/m;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/w0;->a:La2/c$a;

    iput-object p2, p0, La2/w0;->b:Lv2/j;

    iput-object p3, p0, La2/w0;->c:Lv2/m;

    iput-object p4, p0, La2/w0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, La2/w0;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, La2/w0;->a:La2/c$a;

    iget-object v1, p0, La2/w0;->b:Lv2/j;

    iget-object v2, p0, La2/w0;->c:Lv2/m;

    iget-object v3, p0, La2/w0;->d:Ljava/io/IOException;

    iget-boolean v4, p0, La2/w0;->e:Z

    move-object v5, p1

    check-cast v5, La2/c;

    invoke-static/range {v0 .. v5}, La2/n1;->S0(La2/c$a;Lv2/j;Lv2/m;Ljava/io/IOException;ZLa2/c;)V

    return-void
.end method
