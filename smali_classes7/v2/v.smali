.class public final synthetic Lv2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv2/w$a;

.field public final synthetic b:Lv2/w;

.field public final synthetic c:Lv2/m;


# direct methods
.method public synthetic constructor <init>(Lv2/w$a;Lv2/w;Lv2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/v;->a:Lv2/w$a;

    iput-object p2, p0, Lv2/v;->b:Lv2/w;

    iput-object p3, p0, Lv2/v;->c:Lv2/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lv2/v;->a:Lv2/w$a;

    iget-object v1, p0, Lv2/v;->b:Lv2/w;

    iget-object v2, p0, Lv2/v;->c:Lv2/m;

    invoke-static {v0, v1, v2}, Lv2/w$a;->c(Lv2/w$a;Lv2/w;Lv2/m;)V

    return-void
.end method
