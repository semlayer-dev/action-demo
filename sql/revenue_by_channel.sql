-- Revenue by sales channel
SELECT c.chnl_nm      AS channel,
       SUM(h.tot_amt) AS revenue
FROM ord_hdr h
JOIN chnl_dim c ON c.chnl_cd = h.chnl_cd
WHERE h.sts_cd <> 'X'
GROUP BY 1
ORDER BY 1
