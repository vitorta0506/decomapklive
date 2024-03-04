.class public final Lge/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lge/i;->b:J

    .line 3
    iput-object p1, p0, Lge/i;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lge/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "sequence_id_max"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lge/i;->b:J

    return-void
.end method

.method public final b()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lge/i;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lge/i;->b:J

    .line 2
    iget-object v2, p0, Lge/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-wide v3, p0, Lge/i;->b:J

    const-string v5, "sequence_id_max"

    .line 3
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lge/i;->b:J

    return-wide v0
.end method
