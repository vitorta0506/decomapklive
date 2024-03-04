.class public final synthetic Lv2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/x$a;


# instance fields
.field public final synthetic a:Lc2/r;


# direct methods
.method public synthetic constructor <init>(Lc2/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/e0;->a:Lc2/r;

    return-void
.end method


# virtual methods
.method public final a(La2/s1;)Lv2/x;
    .locals 1

    iget-object v0, p0, Lv2/e0;->a:Lc2/r;

    invoke-static {v0, p1}, Lv2/d0$b;->a(Lc2/r;La2/s1;)Lv2/x;

    move-result-object p1

    return-object p1
.end method
