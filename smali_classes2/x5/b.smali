.class public final Lx5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lv5/b;

.field private static final b:Lv5/b;

.field private static final c:Lv5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx5/a;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lx5/a;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lx5/b;->a:Lv5/b;

    .line 2
    new-instance v0, Lx5/a;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx5/a;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lx5/b;->b:Lv5/b;

    .line 3
    new-instance v0, Lx5/a;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, Lx5/a;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lx5/b;->c:Lv5/b;

    return-void
.end method

.method public static a()Lv5/b;
    .locals 1

    sget-object v0, Lx5/b;->b:Lv5/b;

    return-object v0
.end method
