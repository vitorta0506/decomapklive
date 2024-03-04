.class public final synthetic Lv5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/h;


# instance fields
.field public final synthetic a:Lv5/b;


# direct methods
.method public synthetic constructor <init>(Lv5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv5/a;->a:Lv5/b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv5/a;->a:Lv5/b;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lv5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
