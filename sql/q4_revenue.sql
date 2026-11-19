-- Q4 revenue by month
SELECT date_trunc('month', h.ord_dt) AS period,
       SUM(h.tot_amt)               AS revenue
FROM ord_hdr h
JOIN ord_ln l ON l.ord_id = h.ord_id
GROUP BY 1
